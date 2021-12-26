import 'package:flutter/material.dart';
import 'package:quizapp/pages/lost_page.dart';
import 'package:quizapp/pages/won_page.dart';
import 'package:quizapp/usefull/my_card.dart';
import 'package:quizapp/usefull/my_colors.dart';

// ignore_for_file: prefer_const_constructors

class GameMenu extends StatefulWidget {
  const GameMenu({Key? key}) : super(key: key);

  @override
  _GameMenuState createState() => _GameMenuState();
}

class _GameMenuState extends State<GameMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.violet,
      appBar: AppBar(
        title: Text("Question 1"),
        backgroundColor: MyColors.violet,
      ),
      body: Column(
        children: [
          MyCard(
            txt: "5+3=?",
            myHeight: 200,
            myWidth: 400,
            myColor: MyColors.independence,
          ),
          SizedBox(height: 10.0),
          InkWell(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WonPage()))
            },
            child: MyCard(txt: "8"),
          ),
          InkWell(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LostPage()))
            },
            child: MyCard(txt: "3"),
          ),
          InkWell(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LostPage()))
            },
            child: MyCard(txt: "6"),
          ),
          InkWell(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LostPage()))
            },
            child: MyCard(txt: "0"),
          ),
        ],
      ),
    );
  }
}
