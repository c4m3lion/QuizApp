// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_network.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ad Qoy"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter a name",
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushReplacementNamed(context, '/home'),
              },
              child: Icon(
                Icons.login,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
