// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_datas.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => {_scaffoldKey.currentState?.openDrawer()},
          child: Icon(
            Icons.menu,
            color: MyColors.lightgreen,
            size: 50,
          ),
        ),
        backgroundColor: MyColors.violet,
        elevation: 2.0,
        actions: [
          InkWell(
            onTap: () => {
              Navigator.pushNamed(context, "/scoreboard"),
            },
            child: Image(
              image: AssetImage(MyIcons.leaderBoard),
            ),
          ),
        ],
      ),
      //-----------------------------------------
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      //mainmenu part play button and logo
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(MyIcons.logo),
          ),
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
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
        ],
      ),
      backgroundColor: MyColors.violet,
    );
  }
}
