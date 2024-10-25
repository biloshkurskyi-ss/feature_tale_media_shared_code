import 'package:collection/collection.dart';
import 'package:fairy_tales_world/common/data/models/paginated_response.dart';
import 'package:fairy_tales_world/common/features/tale_media/tale_media.dart';
import 'package:fairy_tales_world/features/tale_media/domain/repositories/tale_media_repository_io.dart';
import 'package:flutter/foundation.dart';

class TaleMediaRepositoryIoImpl implements TaleMediaRepositoryIo {
  final TaleMediaRemoteDataSourceInterface remoteDataSource;
  final TaleMediaLocalDataSourceInterface localDataSource;
  final ValueNotifier<String?> talesLanguageId;

  TaleMediaRepositoryIoImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.talesLanguageId,
  }) {
    talesLanguageId.addListener(_onUpdatedTalesLanguageId);
  }

  @override
  Future<PaginatedResponse<TaleMedia>> fetchTaleMediasWithParameters({
    TaleMediaFetchParameters? parameters,
  }) async {
    if (parameters?.token == null) {
      final cachedItems = localDataSource.getCachedTaleMedias();
      if (cachedItems.isNotEmpty) {
        return PaginatedResponse(
            items: cachedItems, nextToken: localDataSource.nextToken);
      }
    }

    return _fetchTaleMedias(parameters: parameters);
  }

  Future<PaginatedResponse<TaleMedia>> _fetchTaleMedias(
      {TaleMediaFetchParameters? parameters}) async {
    final serverResponse = await remoteDataSource
        .searchTaleMediasWithParameters(parameters: parameters);

    await localDataSource.cacheTaleMedias(
      articles: serverResponse.items,
      nextToken: serverResponse.nextToken,
    );
    return serverResponse;
  }

  @override
  Future<List<TaleMediaElement>> fetchTaleMediaElementsWithParameters(
          TaleMediaElementsFetchParameters parameters,) =>
      remoteDataSource.fetchTaleMediaElementsWithParameters(parameters);

  Future<void> _onUpdatedTalesLanguageId() async {
    localDataSource.reset();
  }

  @override
  void dispose() {
    talesLanguageId.removeListener(_onUpdatedTalesLanguageId);
  }

  @override
  Future<TaleMedia?> fetchTaleMedia({required String taleMediaId}) async {
    final cachedMedia = localDataSource.getCachedTaleMedias().firstWhereOrNull((element) => element.id == taleMediaId);
    return Future.value(cachedMedia);
  }
}
