import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          UserItemWidget(
            avatarURL: 'https://randomuser.me/api/portraits/men/3.jpg',
            name: 'Piotr Obdarowicz',
          ),
        ],
      ),
    );
  }
}

class UserItemWidget extends StatelessWidget {
  const UserItemWidget({
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
