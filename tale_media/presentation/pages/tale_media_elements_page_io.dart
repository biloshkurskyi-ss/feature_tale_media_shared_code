import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media_element.dart';
import 'package:fairy_tales_world/features/analytics/analytics.dart';
import 'package:fairy_tales_world/features/l10n/app_localizations.dart';
import 'package:fairy_tales_world/features/tale/presentation/managers/tale_reader_button_manager.dart';
import 'package:fairy_tales_world/features/tale_generation/data/parsers/tale_media_content_parser.dart';
import 'package:fairy_tales_world/features/tale_generation/domain/use_cases/generate_tale_contents_use_case.dart';
import 'package:fairy_tales_world/features/tale_generation/presentation/widgets/settings_app_bar_button.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_element_list_io_bloc/tale_media_element_list_io_bloc.dart';
import 'package:fairy_tales_world/features/tale_media/tale_media.dart';
import 'package:fairy_tales_world/presentation/widgets/tale_content_items/tale_content.dart';
import 'package:fairy_tales_world/presentation/widgets/tale_dynamic_content_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaleMediaElementsPageIo extends StatefulWidget {
  final String taleMediaId;

  const TaleMediaElementsPageIo({super.key, required this.taleMediaId});

  @override
  State<TaleMediaElementsPageIo> createState() =>
      _TaleMediaElementsPageIoState();
}

class _TaleMediaElementsPageIoState extends State<TaleMediaElementsPageIo> {
  final _buttonManager = TaleReaderButtonManager();
  List<Widget> _buttons = [];

  @override
  void initState() {
    super.initState();

    _trackScreenView();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _prepareButtons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TaleMediaElementListIoBloc, TaleMediaElementListIoState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const Center(child: CircularProgressIndicator()),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (state) => _buildErrorWidget(state.message, context),
              noConnection: (_) => _buildNoConnectionWidget(context),
              elements: (state) => _buildContent(state.elements, context),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: const [SettingsAppBarButton()],
    );
  }

  Widget _buildContent(List<TaleMediaElement> elements, BuildContext context) {
    final l10n = AppLocalizations.of(context);

    if (elements.isEmpty) {
      return EmptyElementsWidget(
        message: l10n.noTalesContentText,
        buttonText: l10n.noTalesContentBackButton,
      );
    }

    final parser = TaleMediaContentParser();
    final contentsUseCase = GenerateTaleContentsUseCase(parser);
    final contents = contentsUseCase(elements);

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              _buildAppBar(context),
              _buildContentList(context, contents),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContentList(BuildContext context, List<TaleContent> contents) {
    return TaleDynamicContentContainer(
      contents: contents,
      buttons: _buttons,
    );
  }

  Widget _buildErrorWidget(String message, BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<TaleMediaElementListIoBloc>().add(TaleMediaElementListIoEvent.loadElements(taleMediaId: widget.taleMediaId)),
            child: Text(AppLocalizations.of(context).retryButton),
          ),
        ],
      ),
    );
  }

  Widget _buildNoConnectionWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppLocalizations.of(context).noInternetTitle),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<TaleMediaElementListIoBloc>().add(TaleMediaElementListIoEvent.loadElements(taleMediaId: widget.taleMediaId)),
            child: Text(AppLocalizations.of(context).retryButton),
          ),
        ],
      ),
    );
  }

  void _trackScreenView() {
    final screenViewEvent = ScreenViewEvent(
      screen: ScreenType.taleMediaElementsReader,
      screenClass: 'TaleMediaElementsPageIo',
    );
    context.read<AnalyticsManager>().track(screenViewEvent);
  }

  Future<void> _prepareButtons() async {
    final list = await _buttonManager.getIllustratedTalesButtons(
      context,
      taleMediaId: widget.taleMediaId,
    );
    setState(() {
      _buttons = list;
    });
  }
}
