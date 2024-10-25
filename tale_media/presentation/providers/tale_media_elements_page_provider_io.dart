import 'package:fairy_tales_world/common/data/services/service_locator.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_element_list_io_bloc/tale_media_element_list_io_bloc.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/pages/tale_media_elements_page_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaleMediaElementsPageProviderIo extends StatelessWidget {
  final String taleMediaId;

  const TaleMediaElementsPageProviderIo({
    super.key,
    required this.taleMediaId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TaleMediaElementListIoBloc>()
        ..add(
            TaleMediaElementListIoEvent.loadElements(taleMediaId: taleMediaId)),
      child: TaleMediaElementsPageIo(taleMediaId: taleMediaId),
    );
  }
}
