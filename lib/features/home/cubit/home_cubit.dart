import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/author_model.dart';
import 'package:user_articles/domain/repositories/authors_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.authorsRepository}) : super(HomeState());

  final AuthorsRepository authorsRepository;

  Future<void> start() async {
    emit(
      HomeState(
        status: Status.loading,
      ),
    );
    try {
      final results = await authorsRepository.getAuthorModels();
      emit(
        HomeState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
