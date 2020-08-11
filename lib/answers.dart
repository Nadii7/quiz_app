import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answers(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black54,
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FlatButton(
            color: Colors.white,
            onPressed: selectHandler,
            padding: EdgeInsets.all(16.0),
            highlightColor: Colors.green[100],
            child: Text(
              answerText,
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 16.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
