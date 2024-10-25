import 'package:fairy_tales_world/common/data/models/paginated_response.dart';
import 'package:fairy_tales_world/common/features/tale_media/tale_media.dart';
import 'package:fairy_tales_world/features/tale_media/data/repositories/tale_media_repository_io_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'helper.dart';

// Mock
class MockLocalDataSource extends Mock implements TaleMediaLocalDataSourceInterface {}
class MockRemoteDataSource extends Mock implements TaleMediaRemoteDataSourceInterface {}
class MockValueNotifier<T> extends Mock implements ValueNotifier<T> {}

void main() {
  late MockLocalDataSource mockLocalDataSource;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockValueNotifier<String?> mockLanguageIdNotifier;
  late TaleMediaRepositoryIoImpl repository;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockRemoteDataSource = MockRemoteDataSource();
    mockLanguageIdNotifier = MockValueNotifier<String?>();

    repository = TaleMediaRepositoryIoImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      talesLanguageId: mockLanguageIdNotifier,
    );

    registerFallbackValue(<TaleMedia>[]);
  });

  test('returns cached items when token is null and cache is non-empty', () async {
    final cachedItems = [createTaleMedia('1', 'Cached Tale')];
    when(() => mockLocalDataSource.getCachedTaleMedias()).thenReturn(cachedItems);
    when(() => mockLocalDataSource.nextToken).thenReturn(null);

    final result = await repository.fetchTaleMediasWithParameters(parameters: null);

    expect(result.items, cachedItems);
    verifyNever(() => mockRemoteDataSource.searchTaleMediasWithParameters(parameters: any(named: 'parameters')));
  });

  test('fetches from remote source when cache is empty', () async {
    final serverItems = [createTaleMedia('2', 'Remote Tale')];
    final paginatedResponse = PaginatedResponse<TaleMedia>(
      items: serverItems,
      nextToken: null,
    );

    when(() => mockLocalDataSource.getCachedTaleMedias()).thenReturn([]);
    when(() => mockRemoteDataSource.searchTaleMediasWithParameters(parameters: any(named: 'parameters')))
        .thenAnswer((_) async => paginatedResponse);
    when(() => mockLocalDataSource.cacheTaleMedias(articles: serverItems, nextToken: null))
        .thenAnswer((_) async {});

    // Act
    final result = await repository.fetchTaleMediasWithParameters(parameters: null);

    // Assert
    expect(result.items, serverItems);
    verify(() => mockRemoteDataSource.searchTaleMediasWithParameters(parameters: any(named: 'parameters'))).called(1);
    verify(() => mockLocalDataSource.cacheTaleMedias(articles: serverItems, nextToken: null)).called(1);
  });

  test('caches remote data in local data source', () async {
    final serverItems = [createTaleMedia('3', 'Cached Remote Tale')];
    final paginatedResponse = PaginatedResponse<TaleMedia>(
      items: serverItems,
      nextToken: null,
    );

    when(() => mockLocalDataSource.getCachedTaleMedias()).thenReturn([]);
    when(() => mockRemoteDataSource.searchTaleMediasWithParameters(parameters: any(named: 'parameters')))
        .thenAnswer((_) async => paginatedResponse);
    when(() => mockLocalDataSource.cacheTaleMedias(articles: serverItems, nextToken: null))
        .thenAnswer((_) async {});

    await repository.fetchTaleMediasWithParameters(parameters: null);

    verify(() => mockLocalDataSource.cacheTaleMedias(articles: serverItems, nextToken: null)).called(1);
  });

  test('fetches tale media by id from cache', () async {
    final cachedItem = createTaleMedia('4', 'Specific Tale');
    when(() => mockLocalDataSource.getCachedTaleMedias()).thenReturn([cachedItem]);

    final result = await repository.fetchTaleMedia(taleMediaId: '4');

    expect(result, cachedItem);
  });

  test('returns null if tale media by id not found in cache', () async {
    when(() => mockLocalDataSource.getCachedTaleMedias()).thenReturn([]);

    final result = await repository.fetchTaleMedia(taleMediaId: 'not-existing-id');

    expect(result, isNull);
  });

  test('resets cache when language id changes', () async {
    VoidCallback? capturedListener;

    when(() => mockLanguageIdNotifier.addListener(captureAny())).thenAnswer((invocation) {
      capturedListener = invocation.positionalArguments[0] as VoidCallback;
    });

    repository = TaleMediaRepositoryIoImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      talesLanguageId: mockLanguageIdNotifier,
    );

    expect(capturedListener, isNotNull, reason: 'Listener was not captured.');

    capturedListener?.call();

    // Check that reset called on the local data source
    verify(() => mockLocalDataSource.reset()).called(1);
  });

  test('disposes listener on talesLanguageId', () async {
    when(() => mockLanguageIdNotifier.removeListener(any())).thenAnswer((_) {});

    repository.dispose();

    verify(() => mockLanguageIdNotifier.removeListener(any())).called(1);
  });
}
