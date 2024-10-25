import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fairy_tales_world/common/domain/use_cases/check_connectivity_use_case.dart';
import 'package:fairy_tales_world/common/domain/use_cases/user_reward_use_case.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/extensions/tale_media_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fairy_tales_world/common/data/models/pagination_token.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media_fetch_parameters.dart';
import 'package:fairy_tales_world/features/tale_media/domain/use_cases/fetch_media_io_use_case.dart';
import 'package:fairy_tales_world/shared/domain/entities/content_state.dart';

part 'tale_media_list_io_event.dart';
part 'tale_media_list_io_state.dart';
part 'tale_media_list_io_bloc.freezed.dart';

class TaleMediaListIoBloc
    extends Bloc<TaleMediaListIoEvent, TaleMediaListIoState> {

  final ValueNotifier<String?> talesLanguageId;
  final FetchMediaIoUseCase fetchMediaIoUseCase;
  final UserRewardUseCase userRewardUseCase;
  final CheckConnectivityUseCase checkConnectivityUseCase;
  late final StreamSubscription<List<ConnectivityResult>>
      _connectivitySubscription;

  bool _shouldRetryLoadMore = false;

  TaleMediaListIoBloc({
    required this.fetchMediaIoUseCase,
    required this.userRewardUseCase,
    required this.talesLanguageId,
    required this.checkConnectivityUseCase,
  }) : super(const _Initial()) {
    on<_FetchMedia>(_onFetchMedia);
    on<_LoadMoreMedia>(_onLoadMoreMedia);
    on<_Refresh>(_onRefresh);
    on<_Reset>(_onReset);

    talesLanguageId.addListener(_onUpdatedTalesLanguageId);

    _setupConnectivitySubscription();
  }

  @override
  Future<void> close() async {
    talesLanguageId.removeListener(_onUpdatedTalesLanguageId);
    await _connectivitySubscription.cancel();
    super.close();
  }

  Future<void> _onUpdatedTalesLanguageId() async {
    final languageId = talesLanguageId.value;
    if (languageId != null) {
      add(TaleMediaListIoEvent.fetchMedia(languageId: languageId));
    }
  }

  Future<void> _onRefresh(event, emit) async {
    add(_FetchMedia(languageId: talesLanguageId.value));
  }

  Future<void> _onFetchMedia(
      _FetchMedia event, Emitter<TaleMediaListIoState> emit) async {
    if (!await _checkAndHandleConnectivity(emit)) return;

    emit(const TaleMediaListIoState.loading());

    try {
      final parameters = TaleMediaFetchParameters(
        languageId: event.languageId,
        contentState: ContentState.active,
        sortFieldName: 'createdAt',
      );
      final paginatedResponse =
          await fetchMediaIoUseCase(parameters: parameters);

      final items = [...paginatedResponse.items];
      if (await userRewardUseCase.isRewardAvailable()) {
        items.insert(0, TaleMediaExtension.userPresentTaleMedia());
      }

      emit(TaleMediaListIoState.loaded(
        mediaItems: items,
        nextToken: paginatedResponse.nextToken,
        loadingMore: false,
      ));
    } catch (e) {
      emit(TaleMediaListIoState.error('Failed to fetch media: $e'));
    }
  }

  Future<void> _onLoadMoreMedia(
      _LoadMoreMedia event, Emitter<TaleMediaListIoState> emit) async {
    if (event.nextToken == null || await _isAlreadyLoadingMore()) return;

    if (!await _checkAndHandleConnectivity(emit, onNoConnection: () {
      _shouldRetryLoadMore = true;
    })) return;

    await state.whenOrNull(loaded: (mediaItems, loadingMore, nextToken) async {
      emit(TaleMediaListIoState.loaded(
        mediaItems: mediaItems,
        loadingMore: true,
        nextToken: nextToken,
      ));

      try {
        final parameters = TaleMediaFetchParameters(
          languageId: talesLanguageId.value,
          contentState: ContentState.active,
          sortFieldName: 'createdAt',
          token: event.nextToken,
        );
        final paginatedResponse =
            await fetchMediaIoUseCase(parameters: parameters);

        emit(TaleMediaListIoState.loaded(
          mediaItems: mediaItems + paginatedResponse.items,
          loadingMore: false,
          nextToken: paginatedResponse.nextToken,
        ));
      } catch (e) {
        emit(TaleMediaListIoState.error('Failed to load more media: $e'));
        emit(TaleMediaListIoState.loaded(
          mediaItems: mediaItems,
          loadingMore: false,
          nextToken: nextToken,
        ));
      }
    });
  }

  Future<void> _onReset(event, emit) async {
    emit(const TaleMediaListIoState.initial());
  }

  void _setupConnectivitySubscription() {
    _connectivitySubscription = checkConnectivityUseCase.status
        .listen((List<ConnectivityResult> result) {
      if (_shouldRetryLoadMore && !result.contains(ConnectivityResult.none)) {
        final nextToken = state.maybeWhen(
          loaded: (mediaItems, loadingMore, nextToken) => nextToken,
          orElse: () => null,
        );

        if (nextToken != null) {
          add(_LoadMoreMedia(nextToken: nextToken));
          _shouldRetryLoadMore =
              false;
        }
      }
    });
  }

  Future<bool> _checkAndHandleConnectivity(
    Emitter<TaleMediaListIoState> emit, {
    VoidCallback? onNoConnection,
  }) async {
    final isConnected = await checkConnectivityUseCase.isConnectionAvailable();
    if (!isConnected) {
      emit(const TaleMediaListIoState.noConnection());
      onNoConnection?.call();
      return false;
    }
    return true;
  }

  Future<bool> _isAlreadyLoadingMore() async {
    return state.mapOrNull(loaded: (loadedState) => loadedState.loadingMore) ??
        false;
  }
}
