import 'package:flutter/material.dart';

class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('tytuł'),
        ),
        body: const Column(
          children: [Text('obrazek'), Text('tekst')],
        ));
  }
}
