import 'package:fairy_tales_world/common/data/models/string_pagination_token.dart';
import 'package:fairy_tales_world/common/features/tale_media/data/data_sources/tale_media_local_data_source_interface.dart';
import 'package:fairy_tales_world/features/tale_media/data/data_sources/tale_media_local_data_source.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helper.dart';

void main() {
  late TaleMediaLocalDataSourceInterface localDataSource;

  setUp(() {
    localDataSource = TaleMediaLocalDataSource();
  });

  test('cacheTaleMedias adds items to _cacheTaleMedias', () async {
    final articles = [
      createTaleMedia('1', 'First Tale'),
      createTaleMedia('2', 'Second Tale')
    ];

    await localDataSource.cacheTaleMedias(articles: articles);

    expect(localDataSource.getCachedTaleMedias(), articles);
  });

  test('cacheTaleMedias updates nextToken with StringPaginationToken', () async {
    final nextToken = StringPaginationToken('token123');
    await localDataSource.cacheTaleMedias(
      articles: [createTaleMedia('1', 'Test Tale')],
      nextToken: nextToken,
    );

    expect(localDataSource.nextToken, nextToken);
    expect((localDataSource.nextToken as StringPaginationToken).token, 'token123');
  });

  test('getCachedTaleMedias returns an unmodifiable list', () async {
    final articles = [
      createTaleMedia('1', 'First Tale'),
      createTaleMedia('2', 'Second Tale')
    ];
    await localDataSource.cacheTaleMedias(articles: articles);

    final cachedArticles = localDataSource.getCachedTaleMedias();
    expect(() => cachedArticles.add(createTaleMedia('3', 'Third Tale')), throwsUnsupportedError);
  });

  test('reset clears cached TaleMedias and sets nextToken to null', () async {
    final articles = [
      createTaleMedia('1', 'First Tale'),
      createTaleMedia('2', 'Second Tale')
    ];
    final nextToken = StringPaginationToken('token123');

    await localDataSource.cacheTaleMedias(articles: articles, nextToken: nextToken);

    expect(localDataSource.getCachedTaleMedias(), isNotEmpty);
    expect(localDataSource.nextToken, isNotNull);

    localDataSource.reset();
    expect(localDataSource.getCachedTaleMedias(), isEmpty);
    expect(localDataSource.nextToken, isNull);
  });
}