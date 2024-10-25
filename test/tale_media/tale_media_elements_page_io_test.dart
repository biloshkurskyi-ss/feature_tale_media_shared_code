import 'package:fairy_tales_world/common/domain/entities/filter_criteria.dart';
import 'package:fairy_tales_world/features/analytics/data/managers/analytics_manager.dart';
import 'package:fairy_tales_world/features/analytics/domain/models/analytics_event.dart';
import 'package:fairy_tales_world/features/l10n/app_localizations.dart';
import 'package:fairy_tales_world/features/tale_media/domain/repositories/tale_media_repository_io.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_element_list_io_bloc/tale_media_element_list_io_bloc.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/pages/tale_media_elements_page_io.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/widgets/empty_elements_widget.dart';
import 'package:fairy_tales_world/shared/domain/repositories/tale_repository.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// Mock
class MockTaleMediaElementListIoBloc extends Mock
    implements TaleMediaElementListIoBloc {}

class MockTaleMediaElementListIoState extends Mock
    implements TaleMediaElementListIoState {}

class MockAnalyticsManager extends Mock implements AnalyticsManager {}

class MockTaleMediaRepositoryIo extends Mock implements TaleMediaRepositoryIo {}

class MockTaleRepositoryIo extends Mock implements TaleRepositoryIo {}

// Fake
class FakeAnalyticsEvent extends Fake implements AnalyticsEvent {}

class FakeFilterCriteria extends Fake implements FilterCriteria {}

void main() {
  late MockTaleMediaElementListIoBloc mockBloc;
  late MockAnalyticsManager mockAnalyticsManager;
  late MockTaleMediaRepositoryIo mockTaleMediaRepositoryIo;
  late MockTaleRepositoryIo mockTaleRepositoryIo;
  final getIt = GetIt.instance;

  setUpAll(() {
    registerFallbackValue(FakeAnalyticsEvent());
    registerFallbackValue(FakeFilterCriteria());
  });

  setUp(() {
    mockBloc = MockTaleMediaElementListIoBloc();
    mockAnalyticsManager = MockAnalyticsManager();
    mockTaleMediaRepositoryIo = MockTaleMediaRepositoryIo();
    mockTaleRepositoryIo = MockTaleRepositoryIo();

    getIt.registerSingleton<TaleMediaRepositoryIo>(mockTaleMediaRepositoryIo);
    getIt.registerSingleton<TaleRepositoryIo>(mockTaleRepositoryIo);

    // Common mock responses
    when(() => mockAnalyticsManager.track(any())).thenAnswer((_) async => Future.value());
    when(() => mockBloc.stream).thenAnswer((_) => const Stream<TaleMediaElementListIoState>.empty());
  });

  tearDown(() => getIt.reset());

  Future<void> pumpLocalizedWidget(WidgetTester tester, Widget widget) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<AnalyticsManager>.value(value: mockAnalyticsManager),
          BlocProvider<TaleMediaElementListIoBloc>.value(value: mockBloc),
          Provider<TaleRepositoryIo>.value(value: mockTaleRepositoryIo),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en', '')],
          home: widget,
        ),
      ),
    );
    await tester.pumpAndSettle(const Duration(seconds: 2));
  }

  group('TaleMediaElementsPageIo Tests', () {
    testWidgets('Displays error message and retry button when in error state', (WidgetTester tester) async {
      const errorMessage = 'Failed to load TaleMedia elements';
      when(() => mockBloc.state).thenReturn(const TaleMediaElementListIoState.error(errorMessage));
      await pumpLocalizedWidget(tester, const TaleMediaElementsPageIo(taleMediaId: 'testId'));

      expect(find.text(errorMessage), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('Displays no connection message with retry button in noConnection state', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaElementListIoState.noConnection());
      await pumpLocalizedWidget(tester, const TaleMediaElementsPageIo(taleMediaId: 'testId'));

      expect(find.text('No internet connection'), findsOneWidget); // Adjust message as needed
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('Retry button triggers loadElements event', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaElementListIoState.error('Some error'));
      await pumpLocalizedWidget(tester, const TaleMediaElementsPageIo(taleMediaId: 'testId'));

      final retryButton = find.byType(ElevatedButton);
      await tester.tap(retryButton);
      await tester.pumpAndSettle();

      verify(() => mockBloc.add(const TaleMediaElementListIoEvent.loadElements(taleMediaId: 'testId'))).called(1);
    });

    testWidgets('Displays empty state widget with localized message when elements list is empty', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaElementListIoState.elements([]));
      await pumpLocalizedWidget(tester, const TaleMediaElementsPageIo(taleMediaId: 'testId'));

      expect(find.byType(EmptyElementsWidget), findsOneWidget);
      expect(find.text(AppLocalizations.of(tester.element(find.byType(EmptyElementsWidget))).noTalesContentText), findsOneWidget);
    });

    testWidgets('Displays loading indicator in the initial loading state',
            (WidgetTester tester) async {

          when(() => mockBloc.state)
              .thenReturn(const TaleMediaElementListIoState.loading());

          await tester.pumpWidget(
            MultiProvider(
              providers: [
                Provider<AnalyticsManager>.value(value: mockAnalyticsManager),
                BlocProvider<TaleMediaElementListIoBloc>.value(value: mockBloc),
                Provider<TaleRepositoryIo>.value(value: mockTaleRepositoryIo),
              ],
              child: const MaterialApp(
                localizationsDelegates: [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [Locale('en', '')],
                home: TaleMediaElementsPageIo(taleMediaId: 'testId'),
              ),
            ),
          );

          await tester.pump(const Duration(milliseconds: 100));
          expect(find.byType(CircularProgressIndicator), findsOneWidget);
        });
  });
}
