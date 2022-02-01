import 'package:user_articles/data/remote_data_sources/authors_data_source.dart';
import 'package:user_articles/domain/models/author_model.dart';

class AuthorsRepository {
  AuthorsRepository(this._authorsDataSource);

  final AuthorsDataSource _authorsDataSource;

  Future<List<AuthorModel>> getAuthorModels() async {
    final json = await _authorsDataSource.getAuthorsData();
    return json.map((e) => AuthorModel.fromJson(e)).toList();
  }
}
