import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_details_model.freezed.dart';

part 'article_details_model.g.dart';

@freezed
class ArticleDetailsModel with _$ArticleDetailsModel {
  factory ArticleDetailsModel(
    String title,
    String picture,
    String content,
    int id,
  ) = _ArticleDetailsModel;

  factory ArticleDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailsModelFromJson(json);
}
