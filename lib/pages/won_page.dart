import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_colors.dart';

class WonPage extends StatelessWidget {
  const WonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onDoubleTap: () => {
          Navigator.pushReplacementNamed(context, '/loadinggame',
              arguments: {'page': 'question'})
        },
        child: const Scaffold(
          body: Center(
            child: Text(
              "Won!",
              style: TextStyle(
                fontSize: 60.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: MyColors.darkseagreen,
        ),
      ),
    );
  }
}
