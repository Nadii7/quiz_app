import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            color: Colors.black54,
            child: Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                letterSpacing: 2.0,
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          FlatButton(
            padding: EdgeInsets.all(16.0),
            onPressed: resetHandler,
            color: Colors.white,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: Colors.green,
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
