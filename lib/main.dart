// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:quizapp/pages/game_menu.dart';
import 'package:quizapp/pages/loading.dart';
import 'package:quizapp/pages/loadinggame.dart';
import 'package:quizapp/pages/lost_page.dart';
import 'package:quizapp/pages/main_menu.dart';
import 'package:quizapp/pages/scoreboard.dart';
import 'package:quizapp/pages/won_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => MainMenu(),
      '/game': (context) => GameMenu(),
      '/loadinggame': (context) => LoadingGame(),
      '/scoreboard': (context) => Scoreboard(),
      '/won': (context) => WonPage(),
      '/lost': (context) => LostPage(),
    },
  ));
}
