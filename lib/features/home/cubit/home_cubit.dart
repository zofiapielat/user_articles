import 'package:bloc/bloc.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/author_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  Future<void> start() async {
    emit(
      HomeState(
        status: Status.loading,
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    emit(
      HomeState(
        status: Status.success,
        results: [
          const AuthorModel(
            id: 1,
            avatarURL: 'https://randomuser.me/api/portraits/men/57.jpg',
            name: 'Piotr Obdarowicz',
          ),
          const AuthorModel(
            id: 2,
            avatarURL: 'https://randomuser.me/api/portraits/men/58.jpg',
            name: 'Radosław Gdański',
          ),
        ],
      ),
    );
  }
}
