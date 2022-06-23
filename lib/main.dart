import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MyApp is a widget so it should return a widget : MaterialApp (Class) a widget by
    // material.Dart it does setup to turn the combination of widget to be rendered
    // the Home argument : the core widget that flutter bring on screen when the entire
    // app is mounted to the screen + the Text is also widget which takes a string data type argument
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My title'),
        ),
        body: const Text('default text!'),
      ),
    );
  }
}
