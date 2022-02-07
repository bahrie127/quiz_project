import 'package:flutter/material.dart';
import 'package:quiz_project/quiz_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 3},
        {'text': 'Red', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Rabbit', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite Movies ?',
      'answers': [
        {'text': 'Avangers', 'score': 10},
        {'text': 'X-Man', 'score': 5},
        {'text': 'Fast and Furious', 'score': 3},
        {'text': 'Spaider-Man', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz Project',
            style: TextStyle(color: Color.fromARGB(255, 236, 238, 213)),
          ),
        ),
        body: QuizScreen(
          questions: _questions,
          questionIndex: _questionIndex,
        ),
      ),
    );
  }
}
