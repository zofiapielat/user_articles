import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_articles/features/home/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return ListView(
              children: const [
                _AuthorItemWidget(
                  avatarURL: 'https://randomuser.me/api/portraits/men/3.jpg',
                  name: 'Piotr Obdarowicz',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _AuthorItemWidget extends StatelessWidget {
  const _AuthorItemWidget({
    Key? key,
    required this.avatarURL,
    required this.name,
  }) : super(key: key);

  final String avatarURL;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      color: Colors.grey.shade200,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              avatarURL,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
