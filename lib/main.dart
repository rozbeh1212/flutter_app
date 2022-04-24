// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void asnwer () {
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
          title: Text('Flutter Demo'),
        ),
        body: Column(
          children: [
            RaisedButton(
              child:Text('an2'),
            onPressed: null,
            ),
            
            RaisedButton(
              child:Text('an2'),
            onPressed: null,
            ),
            
          ],
        ),
      ),
    );
  }
}
