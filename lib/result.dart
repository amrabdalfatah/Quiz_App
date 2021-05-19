import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuestion;
  final int result;

  Result(this.restartQuestion, this.result);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Result',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '$result',
          style: TextStyle(fontSize: 30),
        ),
        TextButton(
          child: Text('Restart Question'),
          onPressed: restartQuestion,
        ),
      ],
    );
  }
}
