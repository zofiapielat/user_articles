import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_articles/data/remote_data_sources/articles_remote_data_source.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/domain/repositories/articles_repository.dart';

class MockArticlesRemoteDataSource extends Mock
    implements ArticlesRemoteRetrofitDataSource {}

void main() {
  late ArticlesRepository sut;
  late MockArticlesRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockArticlesRemoteDataSource();
    sut = ArticlesRepository(remoteDataSource: mockRemoteDataSource);
  });

  group('getArticlesForAuthorId', () {
    test('should call remoteDataSource.getArticles() method', () {
      // Stub the method.
      when(() => mockRemoteDataSource.getArticles()).thenAnswer(
        (_) async => <ArticleModel>[],
      );

      // Verify no interactions have occurred.
      verifyNever(() => mockRemoteDataSource.getArticles());

      // Interact with the mock cat instance.
      sut.getArticlesForAuthorId(111);

      // Verify the interaction occurred.
      verify(() => mockRemoteDataSource.getArticles()).called(1);
    });

    test('should filter results with provided authorId', () async {
      // Stub the method.
      when(() => mockRemoteDataSource.getArticles()).thenAnswer(
        (_) async => [
          ArticleModel(1, 111, 'content1', 'picture1'),
          ArticleModel(2, 111, 'content2', 'picture2'),
          ArticleModel(3, 222, 'content3', 'picture3'),
          ArticleModel(4, 111, 'content4', 'picture4'),
        ],
      );

      // Interact with the mock cat instance.
      final results = await sut.getArticlesForAuthorId(111);

      final expected = [
        ArticleModel(1, 111, 'content1', 'picture1'),
        ArticleModel(2, 111, 'content2', 'picture2'),
        ArticleModel(4, 111, 'content4', 'picture4'),
      ];

      // Verify the interaction occurred.
      expect(results, expected);
    });
  });
}
