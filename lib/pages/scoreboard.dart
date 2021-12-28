import 'package:flutter/material.dart';

class Scoreboard extends StatefulWidget {
  const Scoreboard({Key? key}) : super(key: key);

  @override
  _ScoreboardState createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: make scoreboard ui
    return Scaffold(
        appBar: AppBar(
          title: Text("Scoreboard"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 2),
              child: Card(
                child: ListTile(
                  onTap: () => {},
                  title: Text("Auye $index"),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.ytimg.com/vi/HC5xDOggYBU/hqdefault.jpg"),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
