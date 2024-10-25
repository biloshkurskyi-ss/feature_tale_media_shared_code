import 'package:fairy_tales_world/common/domain/exceptions/no_internet_exception.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media_element.dart';
import 'package:flutter/foundation.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/use_cases/fetch_media_elements_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tale_media_element_list_io_event.dart';
part 'tale_media_element_list_io_state.dart';
part 'tale_media_element_list_io_bloc.freezed.dart';

class TaleMediaElementListIoBloc
    extends Bloc<TaleMediaElementListIoEvent, TaleMediaElementListIoState> {

  final FetchMediaElementsUseCase fetchMediaElementsUseCase;

  TaleMediaElementListIoBloc({
    required this.fetchMediaElementsUseCase,
  }) : super(const _Initial()) {
    on<_LoadElements>(_onLoadElements);
  }

  Future<void> _onLoadElements(_LoadElements event, Emitter<TaleMediaElementListIoState> emit) async {
    emit(const TaleMediaElementListIoState.loading());
    try {
      final elements = await fetchMediaElementsUseCase(taleMediaId: event.taleMediaId);
      emit(TaleMediaElementListIoState.elements(elements));
    } on NoInternetException {
      emit(const TaleMediaElementListIoState.noConnection());
    } catch (e) {
      emit(TaleMediaElementListIoState.error('Failed to load TaleMedia elements: ${e.toString()}'));
    }
  }
}