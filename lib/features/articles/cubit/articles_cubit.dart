import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/domain/repositories/articles_repository.dart';

part 'articles_state.dart';
part 'articles_cubit.freezed.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  ArticlesCubit({required this.articlesRepository}) : super(ArticlesState());

  final ArticlesRepository articlesRepository;

  Future<void> fetchData({required int authorId}) async {
    emit(
      ArticlesState(
        status: Status.loading,
      ),
    );
    try {
      final results = await articlesRepository.getArticlesForAuthorId(authorId);
      emit(
        ArticlesState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        ArticlesState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
