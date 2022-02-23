import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_articles/domain/repositories/articles_repository.dart';
import 'package:user_articles/features/articles/cubit/articles_cubit.dart';

class MockArticlesRepository extends Mock implements ArticlesRepository {}

void main() {
  late ArticlesCubit sut;
  late MockArticlesRepository repository;

  setUp(() {
    repository = MockArticlesRepository();
    sut = ArticlesCubit(articlesRepository: repository);
  });

  group('fetchData', () {});
}
