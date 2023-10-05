import 'package:injectable/injectable.dart';
import 'package:user_articles/data/remote_data_sources/article_details_remote_data_source.dart';
import 'package:user_articles/domain/models/article_details_model.dart';

@injectable
class ArticleDetailsRepository {
  ArticleDetailsRepository({required this.remoteDataSource});

  final ArticleDetailsRemoteRetrofitDataSource remoteDataSource;

  Future<List<ArticleDetailsModel>> getArticleDetailsForArticleId(
      int id) async {
    return await remoteDataSource.getArticleDetails();
  }

  // Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
  //   final allArticles = await remoteDataSource.getArticles();
  //   return allArticles
  //       .where((article) => article.authorId == authorId)
  //       .toList();
  // }
}
