import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    Key? key,
    required this.answerText,
  }) : super(key: key);
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: () {
          print(answerText);
        },
      ),
    );
  }
}
