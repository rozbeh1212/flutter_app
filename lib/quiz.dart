import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; // List of questions 
  final int questionIndex;
  final Function answerQuestion; // Function to answer question

  Quiz({ // this a constructor to initialize the properties of the class Quiz 
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String
        ),
        ...(questions[questionIndex]['answers'] as List<Map<Strin, Object>> ).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
