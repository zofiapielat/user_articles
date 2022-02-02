import 'package:user_articles/data/remote_data_sources/authors/authors_remote_data_source.dart';
import 'package:user_articles/domain/models/author_model.dart';

class AuthorsRepository {
  AuthorsRepository({required this.remoteDataSource});

  final AuthorsRemoteRetroFitDataSource remoteDataSource;

  Future<List<AuthorModel>> getAuthorModels() async {
    final json = await remoteDataSource.getAuthors();
    if (json == null) {
      return [];
    }
    return json;
  }
}

class FakeAuthorsRepository {
  FakeAuthorsRepository();

  Future<List<AuthorModel>> getAuthorModels() async {
    return [
      const AuthorModel(
        id: 1,
        picture: 'https://randomuser.me/api/portraits/men/57.jpg',
        firstName: 'Piotr Obdarowicz',
        lastName: 'Piotr Obdarowicz',
      ),
      const AuthorModel(
        id: 2,
        picture: 'https://randomuser.me/api/portraits/men/58.jpg',
        firstName: 'Radosław Gdański',
        lastName: 'Radosław Gdański',
      ),
    ];
  }
}
