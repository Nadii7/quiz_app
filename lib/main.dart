import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Band?',
      'answers': [
        {'text': 'Arctic Monkeys', 'score': 1},
        {'text': 'The Beatles', 'score': 1},
        {'text': 'Cigarettes After Sex', 'score': 1},
        {'text': 'Daft Bunk', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }


    @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          home:Scaffold(
            backgroundColor: Colors.green[400],
            appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Text('Answer the Quiz'),
              centerTitle: true,
            ),
            body: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _questionIndex < _questions.length ?
                  Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  ) : Result(_totalScore, _resetQuiz),
                ],
              ),
            ),
          ),
      );
  }
}