import 'package:bloc/bloc.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/article_model.dart';

part 'articles_state.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  ArticlesCubit() : super(ArticlesState());

  Future<void> fetchData({required int authorID}) async {
    emit(
      ArticlesState(
        status: Status.loading,
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    emit(
      ArticlesState(
        status: Status.success,
        results: [
          ArticleModel(
            id: 1,
            authorID: authorID,
            content:
                'Lorem ipsum dolor sit amet tempor vitae, pellentesque erat velit ac nibh ac purus. Duis blandit eu, facilisis hendrerit. Fusce consequat ac, suscipit quis, ipsum. Nam posuere. Quisque pharetra, urna quis massa at sapien pede lobortis volutpat.',
          ),
        ],
      ),
    );
  }
}
