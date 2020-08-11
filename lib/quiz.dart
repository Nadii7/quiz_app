import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Questions(questions[questionIndex]['questionText'],),
          SizedBox(height: 20.0,),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answers(() => answerQuestion(answer['score']), answer['text']);
          }).toList()
        ],
      )
    );
  }
}
