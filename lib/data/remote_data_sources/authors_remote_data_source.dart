import 'package:dio/dio.dart';

class AuthorsRemoteDataSource {
  Future<List<Map<String, dynamic>>?> getAuthors() async {
    try {
      final response = await Dio(
        BaseOptions(
          baseUrl: 'https://my-json-server.typicode.com/adamsmaka/json-demo',
        ),
      ).get<List<dynamic>>('/users');
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
