import 'package:user_articles/domain/models/author_model.dart';

class AuthorsRepository {
  Future<List<AuthorModel>> getAuthors() async {
    return [
      const AuthorModel(
        id: 1,
        avatarURL: 'https://randomuser.me/api/portraits/men/57.jpg',
        name: 'Piotr Obdarowicz',
      ),
      const AuthorModel(
        id: 2,
        avatarURL: 'https://randomuser.me/api/portraits/men/58.jpg',
        name: 'Radosław Gdański',
      ),
    ];
  }
}
