import 'package:user_articles/domain/models/article_model.dart';

class ArticlesRepository {
  Future<List<ArticleModel>> getArticlesForAuthorID(int authorID) async {
    return [
      ArticleModel(
        id: 1,
        authorID: authorID,
        content:
            'Lorem ipsum dolor sit amet tempor vitae, pellentesque erat velit ac nibh ac purus. Duis blandit eu, facilisis hendrerit. Fusce consequat ac, suscipit quis, ipsum. Nam posuere. Quisque pharetra, urna quis massa at sapien pede lobortis volutpat.',
      ),
    ];
  }
}
