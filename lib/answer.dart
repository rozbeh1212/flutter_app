// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer  extends StatelessWidget {
final Function selectHandler;
final String answerText;

//final VoidCallback selectHandler; 

  Answer(this.selectHandler,  this.answerText); 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
            // ignore: prefer_const_constructors
            child: RaisedButton(
              color: Colors.lightBlue[600],
              textColor: Colors.white,
              child: Text(answerText),
              onPressed: selectHandler,
            ),

    );
  }
}