import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final answerQuestion;
  final int questionIndex;
  const Quizz(
      {
      // Required to make sure we have all that elements so we can pass it to quizz without one of the elements return false
      required this.answerQuestion,
      required this.questions,
      required super.key,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Question(questions.elementAt(_questionIndex)),
        Question(
          questions[questionIndex]['QuestionText'] as String,
        ),
        // Telling dart that it will be a list for that we specify that : as List ...
        // since we dont work with named properties we should respect the order of properties passed to Answer(_answerQuestion) first
        // after that the answer ...
        // for the spread operator ... since we will have the new map list inside an existing list ({List<Widget> children)
        // we try to transform the values of the map list to be added into the existing list without adding the whole list in the previous list
        // in summ => we took the mapped answed and we put it to children as a value to the latter.
        ...(questions[questionIndex]['QuestionAnswers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['Score']), answer['Text'] as String);
        }).toList()
      ],
    );
  }
}
