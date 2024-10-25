import 'package:fairy_tales_world/common/data/models/pagination_token.dart';
import 'package:fairy_tales_world/common/features/tale_media/data/data_sources/tale_media_local_data_source_interface.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media_element.dart';

class TaleMediaLocalDataSource implements TaleMediaLocalDataSourceInterface {
  final List<TaleMedia> _cacheTaleMedias = [];
  final Map<String, List<TaleMediaElement>> _cacheTaleMediaElements = {};

  @override
  PaginationToken? nextToken;

  @override
  List<TaleMedia> getCachedTaleMedias() => List.unmodifiable(_cacheTaleMedias);

  @override
  Future<void> cacheTaleMedias({required List<TaleMedia> articles, PaginationToken? nextToken}) async {
    if (articles.isNotEmpty) {
      _cacheTaleMedias.addAll(articles);
    }
    this.nextToken = nextToken;
  }

  @override
  void reset() {
    _cacheTaleMedias.clear();
    _cacheTaleMediaElements.clear();
    nextToken = null;
  }
}
