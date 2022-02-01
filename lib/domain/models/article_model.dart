class ArticleModel {
  const ArticleModel({
    required this.id,
    required this.authorID,
    required this.content,
  });

  final int id;
  final int authorID;
  final String content;
}
