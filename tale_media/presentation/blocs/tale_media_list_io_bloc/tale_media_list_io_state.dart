part of 'tale_media_list_io_bloc.dart';

@freezed
class TaleMediaListIoState with _$TaleMediaListIoState {
  const factory TaleMediaListIoState.initial() = _Initial;
  const factory TaleMediaListIoState.loading() = _Loading;
  const factory TaleMediaListIoState.loaded({required List<TaleMedia> mediaItems, @Default(false) bool loadingMore, PaginationToken? nextToken}) = _Loaded;
  const factory TaleMediaListIoState.noConnection() = _NoConnection;
  const factory TaleMediaListIoState.error(String message) = _Error;
}