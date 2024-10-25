import 'package:fairy_tales_world/common/data/models/paginated_response.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media.dart';
import 'package:fairy_tales_world/features/tale_media/domain/repositories/tale_media_repository_io.dart';
import 'package:fairy_tales_world/features/tale_media/domain/use_cases/fetch_media_io_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'helper.dart';

// Mock
class MockTaleMediaRepositoryIo extends Mock implements TaleMediaRepositoryIo {}

void main() {
  late MockTaleMediaRepositoryIo mockRepository;
  late FetchMediaIoUseCase fetchMediaUseCase;

  setUp(() {
    mockRepository = MockTaleMediaRepositoryIo();
    fetchMediaUseCase =
        FetchMediaIoUseCase(taleMediaRepository: mockRepository);
  });

  test('returns paginated response when fetching media is successful',
      () async {
    // Arrange
    final mediaItems = [createTaleMedia('1', 'Test Tale')];
    final paginatedResponse = PaginatedResponse<TaleMedia>(
      items: mediaItems,
      nextToken: null,
    );

    when(() => mockRepository.fetchTaleMediasWithParameters(
            parameters: any(named: 'parameters')))
        .thenAnswer((_) async => paginatedResponse);

    // Act
    final result = await fetchMediaUseCase.call(parameters: null);

    // Assert
    expect(result.items, mediaItems);
    verify(() => mockRepository.fetchTaleMediasWithParameters(
        parameters: any(named: 'parameters'))).called(1);
  });

  test('throws an exception with correct message when fetching fails',
      () async {
    // Arrange
    when(() => mockRepository.fetchTaleMediasWithParameters(
            parameters: any(named: 'parameters')))
        .thenThrow(Exception('Network error'));

    // Act & Assert
    expect(
      () async => await fetchMediaUseCase.call(parameters: null),
      throwsA(isA<Exception>().having((e) => e.toString(), 'message',
          contains('Failed to fetch TaleMedia items'))),
    );
  });
}
