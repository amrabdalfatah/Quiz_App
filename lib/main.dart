import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restartQuestion() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < questions.length)
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                      textAnswer: answer,
                      selectAnswer: _answerQuestion,
                    );
                  }).toList(),
                ],
              )
            : Result(_restartQuestion),
      ),
    );
  }
}
