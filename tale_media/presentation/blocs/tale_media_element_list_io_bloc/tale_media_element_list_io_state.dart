part of 'tale_media_element_list_io_bloc.dart';

@freezed
class TaleMediaElementListIoState with _$TaleMediaElementListIoState {
  const factory TaleMediaElementListIoState.initial() = _Initial;
  const factory TaleMediaElementListIoState.loading() = _Loading;
  const factory TaleMediaElementListIoState.elements(List<TaleMediaElement> elements) = _Elements;
  const factory TaleMediaElementListIoState.noConnection() = _NoConnection;
  const factory TaleMediaElementListIoState.error(String message) = _Error;
}