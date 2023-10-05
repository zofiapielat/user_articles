import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/domain/repositories/article_details_repository.dart';

import '../../app/core/enums.dart';
import '../../domain/models/article_details_model.dart';

part 'article_details_state.dart';
part 'article_details_cubit.freezed.dart';

@injectable
class ArticleDetailsCubit extends Cubit<ArticleDetailsState> {
  ArticleDetailsCubit(this.articleDetailsRepository)
      : super(const ArticleDetailsState());

  final ArticleDetailsRepository articleDetailsRepository;

  Future<void> fetchArticleData({required int id}) async {
    emit(
      const ArticleDetailsState(
        status: Status.loading,
      ),
    );

    try {
      final details =
          await articleDetailsRepository.getArticleDetailsForArticleId(id);
      emit(
        ArticleDetailsState(
          status: Status.success,
          results: details,
        ),
      );
    } catch (error) {
      emit(
        ArticleDetailsState(
            status: Status.error, errorMessage: error.toString()),
      );
    }
  }
}
