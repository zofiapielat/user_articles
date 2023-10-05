part of 'article_details_cubit.dart';

@freezed
class ArticleDetailsState with _$ArticleDetailsState {
  const factory ArticleDetailsState({
    @Default([]) List<ArticleDetailsModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _ArticleDetailsState;
}
