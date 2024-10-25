import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fairy_tales_world/common/data/models/paginated_response.dart';
import 'package:fairy_tales_world/common/domain/use_cases/check_connectivity_use_case.dart';
import 'package:fairy_tales_world/common/domain/use_cases/user_reward_use_case.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media.dart';
import 'package:fairy_tales_world/features/tale_media/domain/use_cases/fetch_media_io_use_case.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_list_io_bloc/tale_media_list_io_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc_test/bloc_test.dart';
import 'helper.dart';

// Mock
class MockFetchMediaIoUseCase extends Mock implements FetchMediaIoUseCase {}

class MockUserRewardUseCase extends Mock implements UserRewardUseCase {}

class MockCheckConnectivityUseCase extends Mock
    implements CheckConnectivityUseCase {}

class MockValueNotifier<T> extends Mock implements ValueNotifier<T> {}

void main() {
  late MockFetchMediaIoUseCase mockFetchMediaUseCase;
  late MockUserRewardUseCase mockUserRewardUseCase;
  late MockCheckConnectivityUseCase mockCheckConnectivityUseCase;
  late MockValueNotifier<String?> mockLanguageIdNotifier;
  late TaleMediaListIoBloc bloc;
  late StreamController<List<ConnectivityResult>> connectivityStreamController;

  setUp(() {
    mockFetchMediaUseCase = MockFetchMediaIoUseCase();
    mockUserRewardUseCase = MockUserRewardUseCase();
    mockCheckConnectivityUseCase = MockCheckConnectivityUseCase();
    mockLanguageIdNotifier = MockValueNotifier<String?>();
    connectivityStreamController = StreamController<List<ConnectivityResult>>();

    when(() => mockCheckConnectivityUseCase.status)
        .thenAnswer((_) => connectivityStreamController.stream);

    when(() => mockCheckConnectivityUseCase.isConnectionAvailable())
        .thenAnswer((_) async => true);

    bloc = TaleMediaListIoBloc(
      fetchMediaIoUseCase: mockFetchMediaUseCase,
      userRewardUseCase: mockUserRewardUseCase,
      talesLanguageId: mockLanguageIdNotifier,
      checkConnectivityUseCase: mockCheckConnectivityUseCase,
    );
  });

  tearDown(() {
    connectivityStreamController.close();
  });

  test('initial state is _Initial', () {
    expect(bloc.state, equals(const TaleMediaListIoState.initial()));
  });

  blocTest<TaleMediaListIoBloc, TaleMediaListIoState>(
    'emits [loading, loaded] when fetchMedia is successful',
    setUp: () {
      connectivityStreamController.add([ConnectivityResult.wifi]);
    },
    build: () {
      final mediaItems = [
        createTaleMedia('1', 'Test Tale').copyWith(
          lastModifiedTime: DateTime.parse("2024-01-00T00:00:00Z"),
        )
      ];
      final paginatedResponse = PaginatedResponse<TaleMedia>(
        items: mediaItems,
        nextToken: null,
      );

      when(() => mockFetchMediaUseCase(parameters: any(named: 'parameters')))
          .thenAnswer((_) async => paginatedResponse);

      when(() => mockCheckConnectivityUseCase.isConnectionAvailable())
          .thenAnswer((_) async => true);

      when(() => mockUserRewardUseCase.isRewardAvailable())
          .thenAnswer((_) async => false);

      return bloc;
    },
    act: (bloc) =>
        bloc.add(const TaleMediaListIoEvent.fetchMedia(languageId: 'en')),
    expect: () => [
      const TaleMediaListIoState.loading(),
      TaleMediaListIoState.loaded(
        mediaItems: [
          createTaleMedia('1', 'Test Tale').copyWith(
              lastModifiedTime: DateTime.parse("2024-01-00T00:00:00Z"))
        ],
        loadingMore: false,
        nextToken: null,
      ),
    ],
  );

  blocTest<TaleMediaListIoBloc, TaleMediaListIoState>(
    'emits [loading, error] when fetchMedia fails',
    build: () {
      when(() => mockFetchMediaUseCase(parameters: any(named: 'parameters')))
          .thenThrow(Exception('Network error'));
      return bloc;
    },
    act: (bloc) =>
        bloc.add(const TaleMediaListIoEvent.fetchMedia(languageId: 'en')),
    expect: () => [
      const TaleMediaListIoState.loading(),
      const TaleMediaListIoState.error(
          'Failed to fetch media: Exception: Network error'),
    ],
  );

  blocTest<TaleMediaListIoBloc, TaleMediaListIoState>(
    'emits [noConnection] when there is no connectivity',
    build: () {
      when(() => mockCheckConnectivityUseCase.isConnectionAvailable())
          .thenAnswer((_) async => false);

      // Emit no connectivity
      connectivityStreamController.add([ConnectivityResult.none]);

      return bloc;
    },
    act: (bloc) =>
        bloc.add(const TaleMediaListIoEvent.fetchMedia(languageId: 'en')),
    expect: () => [
      const TaleMediaListIoState.noConnection(),
    ],
  );
}
