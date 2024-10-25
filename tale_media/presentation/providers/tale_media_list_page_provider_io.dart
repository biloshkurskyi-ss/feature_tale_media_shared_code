import 'package:fairy_tales_world/common/data/services/service_locator.dart';
import 'package:fairy_tales_world/features/tale_media/presentation/blocs/tale_media_list_io_bloc/tale_media_list_io_bloc.dart';
import 'package:fairy_tales_world/features/tale_media/tale_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaleMediaListPageProviderIo extends StatelessWidget {
  const TaleMediaListPageProviderIo({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<TaleMediaListIoBloc>();
    return BlocProvider<TaleMediaListIoBloc>.value(
      value: bloc,
      child: const TaleMediaListPageIo(),
    );
  }
}
