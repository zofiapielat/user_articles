import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/features/articles/cubit/articles_cubit.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({
    Key? key,
    required this.authorID,
  }) : super(key: key);

  final int authorID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ArticlesCubit()..fetchData(authorID: authorID),
        child: BlocBuilder<ArticlesCubit, ArticlesState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.initial:
                return const Center(
                  child: Text('Initial state'),
                );
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case Status.success:
                return ListView(
                  children: [
                    for (final author in state.results)
                      _AuthorItemWidget(
                        model: author,
                      ),
                  ],
                );
              case Status.error:
                return Center(
                  child: Text(
                    state.errorMessage ?? 'Unknown error',
                    style: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

class _AuthorItemWidget extends StatelessWidget {
  const _AuthorItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ArticleModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          color: Colors.black12,
          child: Row(
            children: [
              Expanded(
                child: Text(model.content),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_right,
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
