import 'package:bloc/bloc.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/author_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  Future<void> start() async {

  }
}
