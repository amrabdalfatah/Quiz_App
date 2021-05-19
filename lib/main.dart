import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Red', 'Black', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favourite Animal?',
        'answers': ['Rabbit', 'Snack', 'Lion', 'Elephant'],
      },
      {
        'questionText': 'Who\'s your favourite Instructor?',
        'answers': ['Max', 'Amr', 'Anjela'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ... (questions[_questionIndex]['answers'] as List<String>).map(
              (index) {
                return Answer(textAnswer: index, selectAnswer: _answerQuestion);
              }
            ).toList(),
          ],
        ),
      ),
    );
  }
}
