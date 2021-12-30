import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_datas.dart';
import 'package:quizapp/usefull/my_network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingGame extends StatefulWidget {
  const LoadingGame({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingGame> {
  void loadQuestion() async {
    await MyNetwork().getQuestion();
    Navigator.pushReplacementNamed(context, '/game');
    setState(() {
      print("hellow");
    });
  }

  @override
  void initState() {
    super.initState();
    loadQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 80.0,
        ),
      ),
      backgroundColor: MyColors.darkseagreen,
    );
  }
}
