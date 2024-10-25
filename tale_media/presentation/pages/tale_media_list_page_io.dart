import 'package:fairy_tales_world/common/data/models/pagination_token.dart';
import 'package:fairy_tales_world/common/features/navigation/navigation.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media.dart';
import 'package:fairy_tales_world/common/presentation/widgets/tale_media_card.dart';
import 'package:fairy_tales_world/features/analytics/analytics.dart';
import 'package:fairy_tales_world/features/l10n/app_localizations.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_list_io_bloc/tale_media_list_io_bloc.dart';
import 'package:fairy_tales_world/features/tale_media/tale_media.dart';
import 'package:fairy_tales_world/helpers/assets.dart';
import 'package:fairy_tales_world/shared/presentation/widgets/utils/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaleMediaListPageIo extends StatefulWidget {
  const TaleMediaListPageIo({super.key});

  @override
  State<TaleMediaListPageIo> createState() => _TaleMediaListPageIoState();
}

class _TaleMediaListPageIoState extends State<TaleMediaListPageIo> {
  final ScrollController _scrollController = ScrollController();
  late final TaleMediaListIoBloc _bloc;

  @override
  void initState() {
    super.initState();
    _trackScreenView();
    _initializeBlocAndScrollListener();
  }

  void _trackScreenView() {
    final screenViewEvent = ScreenViewEvent(
      screen: ScreenType.taleMediaList,
      screenClass: 'TaleMediaListPageIo',
    );
    context.read<AnalyticsManager>().track(screenViewEvent);
  }

  void _initializeBlocAndScrollListener() {
    _bloc = context.read<TaleMediaListIoBloc>();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<TaleMediaListIoBloc, TaleMediaListIoState>(
          bloc: _bloc,
          listener: (context, state) {
            state.whenOrNull(
              error: (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.defaultTaleMediaErrorMessage)),
                );
              }
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (mediaItems, loadingMore, nextToken) =>
              mediaItems.isEmpty
                  ? _buildEmptyMediaListWidget(l10n)
                  : _buildMediaGrid(context, mediaItems, loadingMore),
              noConnection: () => _buildNoConnectionWidget(l10n),
              error: (message) => _buildErrorWidget(context),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMediaGrid(BuildContext context, List<TaleMedia> mediaItems, bool loadingMore) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final crossAxisCount = DeviceUtils.isTablet(context)
            ? (orientation == Orientation.portrait ? 2 : 3)
            : (orientation == Orientation.portrait ? 1 : 2);

        return RefreshIndicator(
          onRefresh: () async => _bloc.add(const TaleMediaListIoEvent.refresh()),
          child: GridView.builder(
            controller: _scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            padding: const EdgeInsets.all(10),
            itemCount: mediaItems.length + (loadingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index >= mediaItems.length) {
                return const Center(child: CircularProgressIndicator());
              }
              return TaleMediaCard(taleMedia: mediaItems[index]);
            },
          ),
        );
      },
    );
  }

  void _onScroll() {
    if (_isNearBottom()) {
      final nextToken = _getNextTokenIfAvailable();
      if (nextToken != null) {
        _bloc.add(TaleMediaListIoEvent.loadMoreMedia(nextToken: nextToken));
      }
    }
  }

  bool _isNearBottom() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final delta = MediaQuery.of(context).size.height * 0.25;
    return maxScroll - currentScroll <= delta;
  }

  PaginationToken? _getNextTokenIfAvailable() {
    return _bloc.state.maybeMap(
      loaded: (loadedState) => !loadedState.loadingMore ? loadedState.nextToken : null,
      orElse: () => null,
    );
  }

  Widget _buildNoConnectionWidget(AppLocalizations l10n) {
    return InfoMessageWidget(
      title: l10n.noInternetTitle,
      subtitle: l10n.failedReportingSnackBar,
      buttonText: l10n.retryButton,
      onButtonPressed: () => _bloc.add(const TaleMediaListIoEvent.refresh()),
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return InfoMessageWidget(
      title: l10n.illustratedTalesUnavailable,
      subtitle: l10n.listUnavailableMessage,
      buttonText: l10n.refreshList,
      onButtonPressed: () => _bloc.add(const TaleMediaListIoEvent.refresh()),
      browseTextButton: l10n.browseTextTales,
      onBrowseButtonPressed: () => context.goNamed(AppRouterConstants.authorsListName),
      imagePath: AssetImages.unavailableTaleImage,
    );
  }

  Widget _buildEmptyMediaListWidget(AppLocalizations l10n) {
    return EmptyMediaListWidget(
      message: l10n.emptyMediaListMessage,
      onCheckLibrary: () => context.goNamed(AppRouterConstants.authorsListName),
    );
  }
}

