import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quizz.dart';
import './result.dart';

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
      'QuestionAnswers': [
        {'Text': 'Black', 'Score': 1},
        {'Text': 'Red', 'Score': 2},
        {'Text': 'Blue', 'Score': 3},
        {'Text': 'Green', 'Score': 4}
      ],
    },
    {
      'QuestionText': 'What\'s your favorite food ?',
      'QuestionAnswers': [
        {'Text': 'Tacos', 'Score': 1},
        {'Text': 'Couscous', 'Score': 20},
        {'Text': 'Tajine', 'Score': 13},
        {'Text': 'Burger', 'Score': 4}
      ],
    },
    {
      'QuestionText': 'What\'s your favorite animal ?',
      'QuestionAnswers': [
        {'Text': 'Cat', 'Score': 10},
        {'Text': 'Dog', 'Score': 20},
        {'Text': 'Lion', 'Score': 1},
        {'Text': 'Scorpion', 'Score': 40}
      ],
    },
  ];

  // as good practice I declared the questionIndex property as var because it's intantiated with 0 then no need to declare as int
  var _questionIndex = 0;
// I create a map collection so that I have key values which is helpfull !

// we create totalScore to be increased each time the player win
  var _totalScore = 0;

  void _resetQuizz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  _answerQuestion(int score) {
    _totalScore += score;

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
              : Result(
                  resultScore: _totalScore,
                  resetHandler: _resetQuizz,
                )),
    );
  }
}
