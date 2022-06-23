import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // this selectHAndler property is where we store a pointer at a function (for example the answer)
  final Function selectHandler;
  const Answer(this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text('Answer'),
        onPressed: (() => {}),
      ),
    );
  }
}
