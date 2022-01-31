import 'package:dio/dio.dart';
import 'package:user_articles/data/remote_data_sources/articles_remote_data_source.dart';
import 'package:user_articles/domain/models/article_model.dart';

class ArticlesRepository {
  ArticlesRepository({required this.remoteDataSource});

  final ArticlesRemoteDataSource remoteDataSource;

  Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
    final json = await remoteDataSource.getArticles();
    if (json == null) {
      return [];
    }
    return json.map((item) => ArticleModel.fromJson(item)).toList();
  }
}

class ArticlesRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getArticlesData() async {
    try {
      final response = await Dio(
        BaseOptions(
          baseUrl: 'https://my-json-server.typicode.com/adamsmaka/json-demo',
        ),
      ).get<List<dynamic>>(
          '/articles');
      final listDynamic = response.data;
      if (listDynamic == null) {
        return null;
      }
      return listDynamic.map((e) => e as Map<String, dynamic>).toList();
    } on DioError catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data.toString());
      } else {
        throw Exception(e.message);
      }
    }
  }
}