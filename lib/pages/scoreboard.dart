// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_datas.dart';

class Scoreboard extends StatefulWidget {
  const Scoreboard({Key? key}) : super(key: key);

  @override
  _ScoreboardState createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  Color scoreBoardColor(int i) {
    switch (i) {
      case (0):
        return Colors.yellow;
      case (1):
        return Colors.grey;
      case (2):
        return Colors.brown;
      default:
        return MyColors.independence;
    }
    //return MyColors.independence;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: make scoreboard ui
    return Scaffold(
      backgroundColor: MyColors.darkseagreen,
      appBar: AppBar(
        backgroundColor: MyColors.independence,
        leading: InkWell(
          onTap: () => {Navigator.of(context).pop()},
          child: Icon(
            Icons.arrow_left,
            color: MyColors.lightgreen,
            size: 50,
          ),
        ),
        title: Text("Scoreboard"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 2),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                tileColor: scoreBoardColor(index),
                onTap: () => {},
                title: Text("Auye $index"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.ytimg.com/vi/HC5xDOggYBU/hqdefault.jpg"),
                ),
                trailing: Text("#" + (index + 1).toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
