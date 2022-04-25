// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(question[questionIndex]),
        ),
        body: Column(
          children: [
            RaisedButton(
                child: Text('an2'), onPressed: () => print('Hello World')),
            RaisedButton(
                child: Text(question[questionIndex]),
                onPressed: () => print('Hello World')),
          ],
        ),
      ),
    );
  }
}
