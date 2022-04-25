import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // final means that it can't be changed
  Question(
      this.questionText); //this means that the questionText is a property of the Question class

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // double.infinity means that it will take the full width of the screen
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
