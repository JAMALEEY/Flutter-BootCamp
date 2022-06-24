import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // this selectHAndler property is where we store a pointer at a function (for example the answer)
  // final function:
  final VoidCallback selectHandler;
  final QuestionAnswers;
  // we allow the Answer widget to accept QuestionAnswers from main.Dart
  const Answer(this.selectHandler, this.QuestionAnswers, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 255, 255, 255)),
          ),
          child: Text(QuestionAnswers),
          onPressed: selectHandler,
        ));
  }
}
