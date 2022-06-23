import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// NB: NOT _Question 
class Question extends StatelessWidget {
  String quetionText;

  Question(this.quetionText);


  @override
  Widget build(BuildContext context) {
    return Text(quetionText);
  }
}
