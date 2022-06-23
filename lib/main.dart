import 'package:flutter/material.dart';
import './question.dart';

void main() => {runApp(MyApp())};

// Both side connection (extends State<MyApp> + @overrid ) to allow the widget to be stateful !
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// the _ private property befor the class name is used to allow access only for the main class (change from public to private)
class _MyAppState extends State<MyApp> {
  // as good practice I declared the questionIndex property as var because it's intantiated with 0 then no need to declare as int
  var _questionIndex = 0;

  var questions = [
    "What\'s your favorite color ?",
    "What\'s your favorite food ?",
    "What\'s your favorite animal ?",
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quizz'),
          ),
          // we pass a children widget to the body its a generic type of Widget passed to the list to be specific
          body: Column(
            children: <Widget>[
              Question(questions.elementAt(_questionIndex)),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: (() => {answerQuestion()}),
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: (() => {answerQuestion()}),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: (() => {answerQuestion()}),
              ),
            ],
          )),
    );
  }
}
