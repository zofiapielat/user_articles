import 'package:injectable/injectable.dart';
import 'package:user_articles/data/remote_data_sources/articles/articles_remote_data_source.dart';
import 'package:user_articles/domain/models/article_model.dart';

@lazySingleton
class ArticlesRepository {
  ArticlesRepository({required this.remoteDataSource});

  final ArticlesRemoteRetroFitDataSource remoteDataSource;

  Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
    final json = await remoteDataSource.getArticles();
    if (json == null) {
      return [];
    }
    return json;
  }
}

class FakeArticlesRepository {
  Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
    return [
      ArticleModel(
        id: 1,
        authorId: authorId,
        content:
            'Lorem ipsum dolor sit amet tempor vitae, pellentesque erat velit ac nibh ac purus. Duis blandit eu, facilisis hendrerit. Fusce consequat ac, suscipit quis, ipsum. Nam posuere. Quisque pharetra, urna quis massa at sapien pede lobortis volutpat.',
      ),
    ];
  }
}
