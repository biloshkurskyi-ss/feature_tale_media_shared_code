part of 'tale_media_element_list_io_bloc.dart';

@freezed
class TaleMediaElementListIoEvent with _$TaleMediaElementListIoEvent {
  const factory TaleMediaElementListIoEvent.loadElements(
      {required String taleMediaId}) = _LoadElements;
}