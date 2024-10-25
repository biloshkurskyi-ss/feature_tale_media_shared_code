import 'package:fairy_tales_world/common/data/models/paginated_response.dart';
import 'package:fairy_tales_world/common/domain/repositories/tale_media_repository.dart';
import 'package:fairy_tales_world/common/features/tale_media/tale_media.dart';
import 'package:flutter/foundation.dart';

abstract class TaleMediaRepositoryIo implements TaleMediaRepository {
  @override
  Future<PaginatedResponse<TaleMedia>> fetchTaleMediasWithParameters({TaleMediaFetchParameters? parameters});

  @override
  Future<List<TaleMediaElement>> fetchTaleMediaElementsWithParameters(TaleMediaElementsFetchParameters parameters);

  @mustCallSuper
  void dispose();
}