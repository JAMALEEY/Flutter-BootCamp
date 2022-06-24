import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quizz.dart';

void main() => {runApp(MyApp())};

// Both side connection (extends State<MyApp> + @overrid ) to allow the widget to be stateful !
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// the _ private property befor the class name is used to allow access only for the main class (change from public to private)
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'QuestionText': 'What\'s your favorite color ?',
      'QuestionAnswers': ['Black', 'White', 'Grey', 'Red'],
    },
    {
      'QuestionText': 'What\'s your favorite food ?',
      'QuestionAnswers': ['Tacos', 'Burger', 'Couscous', 'Tajine'],
    },
    {
      'QuestionText': 'What\'s your favorite country ?',
      'QuestionAnswers': ['Morrocco', 'Morrocco', 'Morrocco', 'Morrocco'],
    },
  ];

  // as good practice I declared the questionIndex property as var because it's intantiated with 0 then no need to declare as int
  var _questionIndex = 0;
// I create a map collection so that I have key values which is helpfull !

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
    if (_questionIndex < _questions.length) {
      print('more questions loading');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quizz'),
          ),
          // we pass a children widget to the body its a generic type of Widget passed to the list to be specific
          body: _questionIndex < _questions.length
              ? Quizz(
                // we assign valued to our arguments
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                  key: null,
                )
              : Center(
                  child: Text('BRAVO !'),
                )),
    );
  }
}
