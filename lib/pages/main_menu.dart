import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_colors.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () => {
                Navigator.pushNamed(context, "/scoreboard"),
              },
              child: const Icon(
                Icons.account_circle,
                size: 50,
                color: MyColors.lightgreen,
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            Container(
              alignment: Alignment.center,
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
                  primary: MyColors.darkseagreen,
                  minimumSize: const Size(200, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10.0,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: MyColors.violet,
    );
  }
}
