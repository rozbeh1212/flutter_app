// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  // _MyAppState means that this class is private
  var questionIndex = 0;

  void answerQuestion() { // this method is called when the answer button is pressed and it changes the questionIndex to the next question in the list of questions and then rebuilds the widget tree 
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 10},
          {'text': 'Snake', 'score': 5},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Lion', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': [
          {'text': 'Steak', 'score': 10},
          {'text': 'Pizza', 'score': 5},
          {'text': 'Pasta', 'score': 3},
          {'text': 'Sushi', 'score': 1},
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String), // this is a string literal so we need to cast it to string 
            ...(questions[questionIndex]['answers'] as List<String>)  //... means that we are going to add all the answers to the list of children of the column widget 
                .map((answer) {
              return Answer(answerQuestion, answer); // return a new Answer widget with the answerQuestion function and the answer as a parameter 
            }).toList()
          ],
        ),
      ),
    );
  }
}
