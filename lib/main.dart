// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/pages/main_menu.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuizApp',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: MainMenu());
  }
}
