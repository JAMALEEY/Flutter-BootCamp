import 'package:flutter/material.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // as good practice I declared the questionIndex property as var because it's intantiated with 0 then no need to declare as int
  var questionIndex = 0;

  var questions = [
    "What\'s your favorite color ?",
    "What\'s your favorite food ?",
  ];

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
              Text(questions.elementAt(questionIndex)),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: (() => {
                      questionIndex++,
                      print('Answer 1 pressed'),
                      print(questionIndex),
                    }),
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: (() => print('Answer 2 pressed')),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: (() => print('Answer 3 pressed')),
              ),
            ],
          )),
    );
  }
}
