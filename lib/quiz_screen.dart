import 'package:flutter/material.dart';
import 'package:quiz_project/answer_widget.dart';
import 'package:quiz_project/question_widget.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    Key? key,
    required this.questions,
    required this.questionIndex,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //question text
        QuestionWidget(
            questionText: questions[questionIndex]['questionText'] as String),
        //answer list
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerWidget(answerText: answer['text'] as String);
        })
      ],
    );
  }
}
//[widget,widget,widget]
//widget, widget, widget
