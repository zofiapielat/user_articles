import 'package:flutter_test/flutter_test.dart';
import 'package:user_articles/domain/models/author_model.dart';

void main() {
  test('should successfuly create model from json map', () {
    final Map<String, dynamic> json = {
      'id': 123,
      'picture': 'http://wp.pl/image.jpg',
      'first_name': 'Kamil',
      'last_name': 'Kowalczyk',
    };
    final result = AuthorModel.fromJson(json);
    final expected = AuthorModel(
      123,
      'http://wp.pl/image.jpg',
      'Kamil',
      'Kowalczyk',
    );
    expect(result, expected);
  });

  test('name getter should return first and second name combined', () {
    final model = AuthorModel(
      123,
      'http://wp.pl/image.jpg',
      'Kamil',
      'Kowalczyk',
    );
    final result = model.name;
    const expected = 'Kamil Kowalczyk';
    expect(result, expected);
  });
}
