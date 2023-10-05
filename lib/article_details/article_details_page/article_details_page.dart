import 'package:flutter/material.dart';
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
          title: Text(details.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: NetworkImage(details.picture),
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.black12,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Expanded(
                    child: Text(details.content),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
