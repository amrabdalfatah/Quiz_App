import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuestion;
  final int result;

  Result(this.restartQuestion, this.result);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Result',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          '$result',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Question'),
          onPressed: restartQuestion,
        ),
      ],
    );
  }
}
