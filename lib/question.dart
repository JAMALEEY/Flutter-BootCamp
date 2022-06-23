import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// NB: NOT _Question
class Question extends StatelessWidget {
  // it's stateless but the questionText is not a final property for that we add final because the latter will never change after its initialization
  // it will change only on init through the constructor
  final String quetionText;

  Question(this.quetionText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // infinity is a width that ensures that the container takes as much width size as it can.
      width: double.infinity,
      child: Text(
        quetionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
