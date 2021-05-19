import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _result = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {
          'answer': 'Red = 5p',
          'result': 5,
        },
        {
          'answer': 'Black = 4p',
          'result': 4,
        },
        {
          'answer': 'Green = 3p',
          'result': 3,
        },
        {
          'answer': 'White = 2p',
          'result': 2,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answers': [
        {
          'answer': 'Rabbit = 5p',
          'result': 5,
        },
        {
          'answer': 'Snacke = 4p',
          'result': 4,
        },
        {
          'answer': 'Lion = 3p',
          'result': 3,
        },
        {
          'answer': 'Elephant = 2p',
          'result': 2,
        },
      ],
    },
    {
      'questionText': 'Who\'s your favourite Instructor?',
      'answers': [
        {
          'answer': 'Amr = 5p',
          'result': 5,
        },
        {
          'answer': 'Max = 4p',
          'result': 4,
        },
        {
          'answer': 'Anjela = 3p',
          'result': 3,
        },
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void calculteResult(int result){
    _result += result;
  }

  void _restartQuestion() {
    setState(() {
      _result = 0;
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
                  ...(questions[_questionIndex]['answers'] as List<Map>)
                      .map((answer) {
                    return Answer(
                      textAnswer: answer['answer'],
                      selectAnswer: (){
                        calculteResult(answer['result']);
                        _answerQuestion();
                      },
                    );
                  }).toList(),
                ],
              )
            : Result(_restartQuestion, _result),
      ),
    );
  }
}
