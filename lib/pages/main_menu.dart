// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
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
      drawer: SafeArea(
        child: Container(
          width: 200,
          child: Drawer(
            backgroundColor: MyColors.independence,
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.only(top: 30),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: MyColors.lightgreen,
                    size: 40,
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: MyColors.lightgreen,
                    size: 40,
                  ),
                  title: const Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
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
              Navigator.pushNamed(context, '/loadinggame'),
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
