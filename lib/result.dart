import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // Side note for the future yassir that forget alot -_- we store the totalScore coming from main.Dart in resultScore thanks to the shortcut in the constructor whitout alot of boilerplate
  final int resultScore;
  final resetHandler;

  const Result({required this.resultScore, this.resetHandler, super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = 'Nice buddy';
    } else if (resultScore >= 12) {
      resultText = 'Very well ... you win !';
    } else {
      resultText = 'sORRY You Loose';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Replay !'),
            // style: ButtonStyle(
            //   backgroundColor:
            //       MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
            // )
            style: TextButton.styleFrom(
                primary: Colors.amber),
          ),

        ],
      ),
    );
  }
}
