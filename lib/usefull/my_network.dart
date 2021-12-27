import 'package:http/http.dart';
import 'dart:convert';

class MyNetwork {
  String lookingForId;

  static Person person = Person();

  MyNetwork({this.lookingForId = ""});

  void getScoreBoard() async {
    Response response =
        await get(Uri.http('jsonplaceholder.typicode.com', '/todos/1'));
    Map data = jsonDecode(response.body);
    print(data);
  }

  void sendScore() {}

  Future<void> getPerson() async {
    try {
      Response response =
          await get(Uri.http('jsonplaceholder.typicode.com', '/todos/1'));
      Map data = jsonDecode(response.body);
      person.name = data['title'];
      person.id = int.parse(data['id'].toString());
    } catch (e) {
      print(e);
      person.name = "Couldn't find";
    }
  }
}

class Person {
  String name = "Loading...";
  int id = 999999;
  int place = 99999;
  String icon = "";
}
