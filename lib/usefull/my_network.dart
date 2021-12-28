import 'package:http/http.dart';
import 'dart:convert';

class MyNetwork {
  String lookingForId;

  static Person person = Person();
  static Question question = Question();

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

  Future<void> getQuestion() async {
    try {
      Response response = await get(Uri.http('what2cook.atwebpages.com', ""));
      print(response.body);
      Map data = jsonDecode(response.body);
      question.question = data['sual'];
      question.id = int.parse(data['id'].toString());
      question.tags = data['tag'].toString().split(',');
      question.answers = data["cavab"].toString().split(',');
      question.correctAns = question.answers[0];
      question.answers.shuffle();
      question.difficulty = int.parse(data['cetinlik'].toString());
    } catch (e) {
      print(e);
      person.name = "Couldn't find";
    }
  }
}

class Question {
  int id = 0;
  String question = "loading...";
  List<String> tags = List.empty();
  List<String> answers = List.empty();
  String correctAns = "";
  int difficulty = 0;
}

class Person {
  String name = "Loading...";
  int id = 999999;
  int place = 99999;
  String icon = "";
}
