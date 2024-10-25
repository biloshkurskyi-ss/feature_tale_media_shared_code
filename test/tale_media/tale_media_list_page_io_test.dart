import 'dart:async';

import 'package:fairy_tales_world/common/data/models/string_pagination_token.dart';
import 'package:fairy_tales_world/common/domain/enums/app_feature.dart';
import 'package:fairy_tales_world/common/domain/enums/subscription_level.dart';
import 'package:fairy_tales_world/common/presentation/widgets/tale_media_card.dart';
import 'package:fairy_tales_world/features/analytics/data/managers/analytics_manager.dart';
import 'package:fairy_tales_world/features/analytics/domain/models/analytics_event.dart';
import 'package:fairy_tales_world/features/l10n/app_localizations.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_list_io_bloc/tale_media_list_io_bloc.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/pages/tale_media_list_page_io.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/widgets/empty_media_list_widget.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/widgets/info_message_widget.dart';
import 'package:fairy_tales_world/shared/data/services/subscriptions/data/subscription_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'helper.dart';

// Mocks
class MockTaleMediaListIoBloc extends MockBloc<TaleMediaListIoEvent, TaleMediaListIoState> implements TaleMediaListIoBloc {}
class FakeTaleMediaListIoEvent extends Fake implements TaleMediaListIoEvent {}
class FakeTaleMediaListIoState extends Fake implements TaleMediaListIoState {}
class MockAnalyticsManager extends Mock implements AnalyticsManager {}
class MockSubscriptionCubit extends MockCubit<SubscriptionLevel> implements SubscriptionCubit {}

// Fake
class FakeAnalyticsEvent extends Fake implements AnalyticsEvent {}

void main() {
  late MockTaleMediaListIoBloc mockBloc;
  final getIt = GetIt.instance;
  late MockAnalyticsManager mockAnalyticsManager;
  late MockSubscriptionCubit mockSubscriptionCubit;

  setUpAll(() {
    registerFallbackValue(FakeTaleMediaListIoEvent());
    registerFallbackValue(FakeTaleMediaListIoState());
    registerFallbackValue(FakeAnalyticsEvent());
    registerFallbackValue(AppFeature.unlimitedReading);
  });

  setUp(() {
    mockBloc = MockTaleMediaListIoBloc();
    getIt.registerSingleton<TaleMediaListIoBloc>(mockBloc);
    mockAnalyticsManager = MockAnalyticsManager();
    mockSubscriptionCubit = MockSubscriptionCubit();

    // Common mock responses
    when(() => mockAnalyticsManager.track(any())).thenAnswer((_) async => Future.value());
    when(() => mockBloc.stream).thenAnswer((_) => const Stream<TaleMediaListIoState>.empty());
    when(() => mockSubscriptionCubit.hasFeature(any())).thenReturn(true);
  });

  tearDown(() {
    getIt.reset();
  });

  Future<void> pumpWidget(WidgetTester tester, Widget widget) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<AnalyticsManager>.value(value: mockAnalyticsManager),
          BlocProvider<TaleMediaListIoBloc>.value(value: mockBloc),
          Provider<SubscriptionCubit>.value(value: mockSubscriptionCubit),
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
    // await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 2));
  }

  group('TaleMediaListPageIo Tests', () {
    testWidgets('Displays loading indicator in the initial state', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaListIoState.loading());

      await pumpWidget(tester, const TaleMediaListPageIo());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Displays TaleMedia items in the loaded state', (WidgetTester tester) async {
      final mockMediaItems = [createTaleMedia('1', 'Test Tale')];
      when(() => mockBloc.state).thenReturn(TaleMediaListIoState.loaded(
        mediaItems: mockMediaItems,
        loadingMore: false,
      ));

      await pumpWidget(tester, const TaleMediaListPageIo());

      expect(find.byType(TaleMediaCard), findsOneWidget);
      expect(find.text('Test Tale'), findsOneWidget);
    });

    testWidgets('Displays empty state widget in the loaded state with empty list', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaListIoState.loaded(
        mediaItems: [],
        loadingMore: false,
      ));

      await pumpWidget(tester, const TaleMediaListPageIo());

      expect(find.byType(EmptyMediaListWidget), findsOneWidget);
      final expectedText = AppLocalizations.of(tester.element(find.byType(EmptyMediaListWidget))).emptyMediaListMessage;
      expect(find.text(expectedText), findsOneWidget);
    });

    testWidgets('Displays no connection message with retry button in noConnection state', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaListIoState.noConnection());

      await pumpWidget(tester, const TaleMediaListPageIo());

      expect(find.byType(InfoMessageWidget), findsOneWidget);
      final expectedText = AppLocalizations.of(tester.element(find.byType(InfoMessageWidget))).noInternetTitle;
      expect(find.text(expectedText), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('Retry button triggers refresh event in error state', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaListIoState.error('Some error'));

      await pumpWidget(tester, const TaleMediaListPageIo());

      final expectedText = AppLocalizations.of(tester.element(find.byType(InfoMessageWidget))).refreshList;
      final retryButton = find.widgetWithText(ElevatedButton, expectedText);
      await tester.tap(retryButton);
      await tester.pumpAndSettle();

      verify(() => mockBloc.add(const TaleMediaListIoEvent.refresh())).called(1);
    });

    testWidgets('Displays error state with retry button', (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const TaleMediaListIoState.error('Failed to load data'));

      await pumpWidget(tester, const TaleMediaListPageIo());

      final expectedText = AppLocalizations.of(tester.element(find.byType(InfoMessageWidget))).illustratedTalesUnavailable;
      expect(find.text(expectedText), findsOneWidget);

      final retryExpectedText = AppLocalizations.of(tester.element(find.byType(InfoMessageWidget))).refreshList;
      expect(find.text(retryExpectedText), findsOneWidget);
    });

    testWidgets('Displays loading more indicator when loading more items', (WidgetTester tester) async {
      final mockMediaItems = [createTaleMedia('1', 'Test Tale')];
      when(() => mockBloc.state).thenReturn(TaleMediaListIoState.loaded(
        mediaItems: mockMediaItems,
        loadingMore: true,
      ));

      await pumpWidget(tester, const TaleMediaListPageIo());

      expect(find.byType(TaleMediaCard), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsWidgets);
    });

    testWidgets('Scroll near bottom triggers loadMoreMedia event', (WidgetTester tester) async {
      // Arrange:
      final stateController = StreamController<TaleMediaListIoState>();
      final mockMediaItems = List.generate(20, (index) => createTaleMedia('$index', 'Tale $index'));
      final nextToken = StringPaginationToken('mockToken');

      whenListen(mockBloc, stateController.stream, initialState: TaleMediaListIoState.loaded(
        mediaItems: mockMediaItems,
        loadingMore: false,
        nextToken: nextToken,
      ));

      await pumpWidget(tester, const TaleMediaListPageIo());

      // Act:
      await tester.drag(find.byType(RefreshIndicator), const Offset(0, -2000));
      await tester.pump(const Duration(seconds: 1));

      stateController.add(TaleMediaListIoState.loaded(
        mediaItems: mockMediaItems,
        loadingMore: false,
        nextToken: nextToken,
      ));
      await tester.pump(const Duration(seconds: 1));

      // Assert:
      verify(() => mockBloc.add(TaleMediaListIoEvent.loadMoreMedia(nextToken: nextToken))).called(1);
      await stateController.close();
    });
  });
}
