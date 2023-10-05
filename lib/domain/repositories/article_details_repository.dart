import 'package:injectable/injectable.dart';
import 'package:user_articles/data/remote_data_sources/article_details_remote_data_source.dart';
import 'package:user_articles/domain/models/article_details_model.dart';

@injectable
class ArticleDetailsRepository {
  ArticleDetailsRepository({required this.remoteDataSource});

  final ArticleDetailsRemoteRetrofitDataSource remoteDataSource;

  Future<List<ArticleDetailsModel>> getArticleDetailsForArticleId(
      int id) async {
    final allArticleDetails = await remoteDataSource.getArticleDetails();
    return allArticleDetails.where((article) => article.id == id).toList();
  }
}
