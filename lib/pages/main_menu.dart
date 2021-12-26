import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_colors.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/game'),
          },
          child: const Text(
            "Play",
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10.0),
        ),
      ),
      backgroundColor: MyColors.violet,
    );
  }
}
