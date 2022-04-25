// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer  extends StatelessWidget {

final VoidCallback selectHandler; 

  Answer(this.selectHandler); 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
            // ignore: prefer_const_constructors
            child: RaisedButton(
              color: Colors.lightBlue[600],
              child: Text('Answer 1'),
              onPressed: selectHandler,
            ),

    );
  }
}