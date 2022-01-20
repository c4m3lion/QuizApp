import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_card.dart';
import 'package:quizapp/usefull/my_datas.dart';
import 'package:quizapp/usefull/my_network.dart';

// ignore_for_file: prefer_const_constructors

class GameMenu extends StatefulWidget {
  const GameMenu({Key? key}) : super(key: key);

  @override
  _GameMenuState createState() => _GameMenuState();
}

class _GameMenuState extends State<GameMenu> {
  Question q = MyNetwork.question;
  @override
  Widget build(BuildContext context) {
    void openpage({String n = "/lost"}) {
      Navigator.pushReplacementNamed(context, n);
    }

    return Scaffold(
      backgroundColor: MyColors.violet,
      appBar: AppBar(
        title: Text("Question 1"),
        backgroundColor: MyColors.violet,
      ),
      body: Column(
        children: [
          MyCard(
            txt: MyNetwork.question.question,
            myHeight: 200,
            myWidth: 400,
            myColor: MyColors.independence,
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView(
              children: [
                for (var i in q.answers)
                  InkWell(
                    onTap: () =>
                        {openpage(n: i == q.correctAns ? "/won" : "/lost")},
                    child: MyCard(txt: i),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
