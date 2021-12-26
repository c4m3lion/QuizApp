import 'package:flutter/material.dart';

import 'package:quizapp/usefull/my_colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MyCard extends StatelessWidget {
  //const MyCard({Key? key}) : super(key: key);

  final String txt;
  final double myWidth;
  final double myHeight;
  final Color myColor;
  // ignore: use_key_in_widget_constructors
  const MyCard({
    this.txt = "",
    this.myHeight = 80,
    this.myWidth = 400,
    this.myColor = MyColors.stealteal,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: myColor,
      child: SizedBox(
        width: myWidth,
        height: myHeight,
        //fit: BoxFit.scaleDown,
        child: Center(
          child: AutoSizeText(
            txt,
            style: const TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
