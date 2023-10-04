part of 'articles_cubit.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const factory ArticlesState({
    @Default([]) List<ArticleModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _ArticlesState;
}
