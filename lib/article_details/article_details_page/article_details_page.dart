import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_articles/app/injection_container.dart';
import 'package:user_articles/article_details/cubit/article_details_cubit.dart';
import 'package:user_articles/domain/models/article_model.dart';

class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({
    Key? key,
    required this.details,
  }) : super(key: key);
  final ArticleModel details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('tytuł'),
        ),
        body: BlocProvider<ArticleDetailsCubit>(
          create: (context) => getIt()
            ..fetchArticleData(
              id: details.id,
            ),
          child: const Column(
            children: [
              _ArticleDetailsWidget(),
            ],
          ),
        ));
  }
}

class _ArticleDetailsWidget extends StatelessWidget {
  const _ArticleDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage(''),
          height: 50,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Container(
            color: Colors.black12,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: const Expanded(
              child: Text(
                  'Litwo! Ojczyzno moja! Ty jesteś jak zdrowie. Nazywał się możemy na wieś rozweselić. Tadeusz Telimenie, Asesor Krajczance a często bez żadnych ozdób, ale szerzej niż myśliwi młodzi tak było jeszcze dobrze zachowana sklepienie całe zaczerwienione, jak on znowu w kuca. Obaczcież, co dzień postrzegam, jak czas i zdrowie. Nazywał się zdawał małpą lub wymowy uczyć się tłocz i tam ma szkół uczących żyć z dom nikt lepiej nad błękitnym Niemnem rozciągnionych. Do zobaczenia! tak wedle dzisiejszej mody jeździł Hreczecha. Tu śmiech młodzieży mowę Wojskiego zagłuszył.'),
            ),
          ),
        ),
      ],
    );
  }
}
