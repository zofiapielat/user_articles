import 'package:flutter/material.dart';
import 'package:user_articles/app/app.dart';
import 'package:user_articles/app/injection_container.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}
