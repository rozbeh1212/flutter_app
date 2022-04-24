// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answer () {
    print('Hello World');
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
          title: Text(question[0]),
        ),
        body: Column(
          children: [
            RaisedButton(
              child:Text('an2'),
            onPressed:() =>  print('Hello World')
            
            ),
            
            RaisedButton(
              child:Text(question[1]),
            onPressed:() =>  print('Hello World')
            ),
            
          ],
        ),
      ),
    );
  }
}
