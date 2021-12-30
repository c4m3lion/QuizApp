import 'package:flutter/material.dart';
import 'package:quizapp/pages/main_menu.dart';
import 'package:quizapp/usefull/my_datas.dart';

class LostPage extends StatelessWidget {
  const LostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onDoubleTap: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainMenu()))
        },
        child: const Scaffold(
          body: Center(
            child: Text(
              "Lost!",
              style: TextStyle(
                fontSize: 60.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: MyColors.independence,
        ),
      ),
    );
  }
}
