import 'package:bloc_test/bloc_test.dart';
import 'package:fairy_tales_world/common/domain/enums/content_type.dart';
import 'package:fairy_tales_world/common/domain/exceptions/no_internet_exception.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media_element.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/use_cases/fetch_media_elements_use_case.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_element_list_io_bloc/tale_media_element_list_io_bloc.dart';
import 'package:fairy_tales_world/shared/domain/entities/content_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFetchMediaElementsUseCase extends Mock implements FetchMediaElementsUseCase {}

void main() {
  late TaleMediaElementListIoBloc bloc;
  late MockFetchMediaElementsUseCase mockFetchMediaElementsUseCase;

  setUp(() {
    mockFetchMediaElementsUseCase = MockFetchMediaElementsUseCase();
    bloc = TaleMediaElementListIoBloc(fetchMediaElementsUseCase: mockFetchMediaElementsUseCase);
  });

  tearDown(() {
    bloc.close();
  });

  group('TaleMediaElementListIoBloc', () {

    test('Initial state is _Initial', () {
      expect(bloc.state, const TaleMediaElementListIoState.initial());
    });

    blocTest<TaleMediaElementListIoBloc, TaleMediaElementListIoState>(
      'emits [_Loading, _Elements] when elements are successfully loaded',
      build: () {
        final mockElements = [
          TaleMediaElement(
            id: '1',
            contentState: ContentState.active,
            contentType: ContentType.image,
            index: 0,
            contentData: {},
            taleMediaId: 'tale_1',
            lastModifiedTime: DateTime.fromMillisecondsSinceEpoch(0),
          )
        ];
        when(() => mockFetchMediaElementsUseCase(taleMediaId: any(named: 'taleMediaId')))
            .thenAnswer((_) async => mockElements);
        return bloc;
      },
      act: (bloc) => bloc.add(const TaleMediaElementListIoEvent.loadElements(taleMediaId: 'tale_1')),
      expect: () => [
        const TaleMediaElementListIoState.loading(),
        TaleMediaElementListIoState.elements([
          TaleMediaElement(
            id: '1',
            contentState: ContentState.active,
            contentType: ContentType.image,
            index: 0,
            contentData: {},
            taleMediaId: 'tale_1',
            lastModifiedTime: DateTime.fromMillisecondsSinceEpoch(0),
          )
        ]),
      ],
      verify: (_) {
        verify(() => mockFetchMediaElementsUseCase(taleMediaId: 'tale_1')).called(1);
      },
    );

    blocTest<TaleMediaElementListIoBloc, TaleMediaElementListIoState>(
      'emits [_Loading, _Error] when fetching elements fails',
      build: () {
        // Arrange:
        when(() => mockFetchMediaElementsUseCase(taleMediaId: any(named: 'taleMediaId')))
            .thenThrow(Exception('Failed to load elements'));

        return bloc;
      },
      act: (bloc) => bloc.add(const TaleMediaElementListIoEvent.loadElements(taleMediaId: 'tale_1')),
      expect: () => [
        const TaleMediaElementListIoState.loading(),
        const TaleMediaElementListIoState.error('Failed to load TaleMedia elements: Exception: Failed to load elements'),
      ],
      verify: (_) {
        verify(() => mockFetchMediaElementsUseCase(taleMediaId: 'tale_1')).called(1);
      },
    );

    blocTest<TaleMediaElementListIoBloc, TaleMediaElementListIoState>(
      'emits [_Loading, _NoConnection] when there is no internet connection',
      build: () {
        when(() => mockFetchMediaElementsUseCase(taleMediaId: any(named: 'taleMediaId')))
            .thenThrow(NoInternetException());

        return bloc;
      },
      act: (bloc) => bloc.add(const TaleMediaElementListIoEvent.loadElements(taleMediaId: 'tale_1')),
      expect: () => [
        const TaleMediaElementListIoState.loading(),
        const TaleMediaElementListIoState.noConnection(),
      ],
      verify: (_) {
        verify(() => mockFetchMediaElementsUseCase(taleMediaId: 'tale_1')).called(1);
      },
    );

    blocTest<TaleMediaElementListIoBloc, TaleMediaElementListIoState>(
      'emits [_Loading, _Elements] with an empty list when no elements are found',
      build: () {
        // Arrange:
        when(() => mockFetchMediaElementsUseCase(taleMediaId: any(named: 'taleMediaId')))
            .thenAnswer((_) async => []);

        return bloc;
      },
      act: (bloc) => bloc.add(const TaleMediaElementListIoEvent.loadElements(taleMediaId: 'tale_1')),
      expect: () => [
        const TaleMediaElementListIoState.loading(),
        const TaleMediaElementListIoState.elements([]),
      ],
      verify: (_) {
        verify(() => mockFetchMediaElementsUseCase(taleMediaId: 'tale_1')).called(1);
      },
    );
  });
}
