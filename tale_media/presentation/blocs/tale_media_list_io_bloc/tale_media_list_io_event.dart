part of 'tale_media_list_io_bloc.dart';

@freezed
class TaleMediaListIoEvent with _$TaleMediaListIoEvent {
  const factory TaleMediaListIoEvent.fetchMedia({String? languageId, PaginationToken? nextToken}) = _FetchMedia;
  const factory TaleMediaListIoEvent.loadMoreMedia({PaginationToken? nextToken}) = _LoadMoreMedia;
  const factory TaleMediaListIoEvent.refresh() = _Refresh;
  const factory TaleMediaListIoEvent.reset() = _Reset;
}
