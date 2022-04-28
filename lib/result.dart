import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore; 
  Result(this.resultScore); // constructor with parameter resultScore to get the score from the quiz.dart

  String get resultPhrase { // get means to get the resultPhrase 
    String resultText; // variable resultText 
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  } 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
