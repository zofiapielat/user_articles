import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/models/article_details_model.dart';

part 'article_details_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class ArticleDetailsRemoteRetrofitDataSource {
  @factoryMethod
  factory ArticleDetailsRemoteRetrofitDataSource(Dio dio) =
      _ArticleDetailsRemoteRetrofitDataSource;

  @GET('/articles')
  Future<List<ArticleDetailsModel>> getArticleDetails();
}
