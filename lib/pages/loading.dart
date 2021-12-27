import 'package:flutter/material.dart';
import 'package:quizapp/usefull/my_network.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    await MyNetwork().getPerson();
    print(MyNetwork.person.name);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(MyNetwork.person.name),
          Text(MyNetwork.person.id.toString()),
        ],
      ),
    );
  }
}
