// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_datas.dart';
import 'package:quizapp/usefull/my_network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math' as math;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Map data = {};
  void getData() async {
    await MyNetwork().getQuestion();
    await Future.delayed(
        const Duration(seconds: 2),
        () => {
              Navigator.pushReplacementNamed(context, "/home"),
            });
    setState(() {});
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
    getData();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
          child: Image(
            image: AssetImage("assets/icons/loadingicon.png"),
          ),
        ),
      ),
      backgroundColor: MyColors.independence,
    );
  }
}
