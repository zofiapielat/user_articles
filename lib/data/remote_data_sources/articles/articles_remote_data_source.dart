import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_articles/domain/models/article_model.dart';

part 'articles_remote_data_source.g.dart';

@lazySingleton
@RestApi(baseUrl: 'https://my-json-server.typicode.com/adamsmaka/json-demo/')
abstract class ArticlesRemoteRetroFitDataSource {
  factory ArticlesRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _ArticlesRemoteRetroFitDataSource;

  @GET('/articles')
  Future<List<ArticleModel>?> getArticles();
}

class ArticlesRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getArticlesData() async {
    try {
      final response = await Dio().get<List<dynamic>>(
          'https://my-json-server.typicode.com/adamsmaka/json-demo/articles');
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

class ArticlesMockedDataSource {
  Future<List<Map<String, dynamic>>> getArticlesData() async {
    return [
      {
        'id': 1,
        'picture': 'https://randomuser.me/api/portraits/men/57.jpg',
        'first_name': 'Piotr',
        'last_name': 'Obdarowicz',
      },
      {
        'id': 2,
        'picture': 'https://randomuser.me/api/portraits/men/58.jpg',
        'first_name': 'Radosław',
        'last_name': 'Gdański',
      },
    ];
  }
}
