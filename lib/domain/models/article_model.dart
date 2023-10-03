import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  ArticleModel(
    this.id,
    this.authorId,
    this.content,
  );

  int id;
  @JsonKey(name: 'author_id')
  int authorId;
  String content;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}


// class ArticleModel {
//   const ArticleModel({
//     required this.id,
//     required this.authorId,
//     required this.content,
//   });

//   final int id;
//   final int authorId;
//   final String content;

//   ArticleModel.fromJson(Map<String, dynamic> json)
//       : id = json['id'],
//         authorId = json['author_id'],
//         content = json['content'];
// }
