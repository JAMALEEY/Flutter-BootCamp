import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
// I create a map collection so that I have key values which is helpfull !
  var questions = [
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

  void _answerQuestion() {
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
              // Question(questions.elementAt(_questionIndex)),
              Question(
                questions[_questionIndex]['QuestionText'] as String,
              ),
              // Telling dart that it will be a list for that we specify that : as List ...
              // since we dont work with named properties we should respect the order of properties passed to Answer(_answerQuestion) first
              // after that the answer ...
              // for the spread operator ... since we will have the new map list inside an existing list ({List<Widget> children)
              // we try to transform the values of the map list to be added into the existing list without adding the whole list in the previous list
              // in summ => we took the mapped answed and we put it to children as a value to the latter.
              ...(questions[_questionIndex]['QuestionAnswers'] as List<String>).map((answer) => Answer(_answerQuestion, answer)).toList()
            ],
          )),
    );
  }
}
