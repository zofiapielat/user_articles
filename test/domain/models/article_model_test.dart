import 'package:flutter_test/flutter_test.dart';
import 'package:user_articles/domain/models/article_model.dart';

void main() {
  test(
    'should successfuly create model from json map',
    () {
      final Map<String, dynamic> json = {
        'id': 123,
        'author_id': 321,
        'content': 'test-content',
        'picture': 'http://wp.pl/image.jpg',
      };
      final result = ArticleModel.fromJson(json);
      final expected = ArticleModel(
        123,
        321,
        'test-content',
        'http://wp.pl/image.jpg',
      );
      expect(result, expected);
    },
  );
}
