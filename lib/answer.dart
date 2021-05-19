import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textAnswer;
  final Function selectAnswer;

  Answer({@required this.textAnswer, @required this.selectAnswer});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(textAnswer),
        onPressed: selectAnswer,
      ),
    );
  }
}