import 'package:flutter/material.dart';

// NB: NOT _Question
class Question extends StatelessWidget {
  // it's stateless but the questionText is not a final property for that we add final because the latter will never change after its initialization
  // it will change only on init through the constructor
  final String quetionText;

  const Question(this.quetionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // infinity is a width that ensures that the container takes as much width size as it can.
      width: double.infinity,
      // Edge... allows us to create an object in different variants
      margin: const EdgeInsets.all(50),
      child: Text(
        quetionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
