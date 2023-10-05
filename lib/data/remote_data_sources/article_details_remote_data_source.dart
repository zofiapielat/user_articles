import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_articles/domain/models/article_model.dart';

part 'article_details_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class ArticleDetailsRemoteRetrofitDataSource {
  @factoryMethod
  factory ArticleDetailsRemoteRetrofitDataSource(Dio dio) =
      _ArticleDetailsRemoteRetrofitDataSource;

  @GET('/articles')
  Future<List<ArticleModel>> getArticleDetails();
}
