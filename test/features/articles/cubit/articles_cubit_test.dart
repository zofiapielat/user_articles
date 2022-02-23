import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/article_model.dart';
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

  group('fetchData', () {
    const tAuthorId = 555;

    group('success', () {
      setUp(() {
        when(() => repository.getArticlesForAuthorId(tAuthorId)).thenAnswer(
          (_) async => [
            ArticleModel(1, tAuthorId, 'content1', 'picture1'),
            ArticleModel(2, tAuthorId, 'content2', 'picture2'),
          ],
        );
      });

      blocTest<ArticlesCubit, ArticlesState>(
        'emits State.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.fetchData(authorId: tAuthorId),
        expect: () => [
          ArticlesState(
            status: Status.loading,
          ),
          ArticlesState(
            status: Status.success,
            results: [
              ArticleModel(1, tAuthorId, 'content1', 'picture1'),
              ArticleModel(2, tAuthorId, 'content2', 'picture2'),
            ],
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getArticlesForAuthorId(tAuthorId)).thenThrow(
          Exception('test exception'),
        );
      });

      blocTest<ArticlesCubit, ArticlesState>(
        'emits State.loading then Status.error with an error message',
        build: () => sut,
        act: (cubit) => cubit.fetchData(authorId: tAuthorId),
        expect: () => [
          ArticlesState(
            status: Status.loading,
          ),
          ArticlesState(
            status: Status.error,
            errorMessage: 'Exception: test exception'
          ),
        ],
      );
    });
  });
}
