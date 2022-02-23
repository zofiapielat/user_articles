import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_articles/domain/repositories/authors_repository.dart';
import 'package:user_articles/features/home/cubit/home_cubit.dart';

class MockAuthorsRepository extends Mock implements AuthorsRepository {}

void main() {
  late HomeCubit sut;
  late MockAuthorsRepository repository;

  setUp(() {
    repository = MockAuthorsRepository();
    sut = HomeCubit(authorsRepository: repository);
  });

  group('start', () {});
}
