import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // this selectHAndler property is where we store a pointer at a function (for example the answer)
  // final function:
  final VoidCallback selectHandler;
  const Answer(this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 255, 0, 0)),
          ),
          child: Text('Answer1'),
          onPressed: selectHandler,
        ));
  }
}
