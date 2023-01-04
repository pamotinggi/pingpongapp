import 'package:flutter/material.dart';
import 'package:pingpongapp/model/question.dart';

class Result extends StatelessWidget {
  final double resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    final score = num.parse(resultScore.toStringAsFixed(2));

    if (score <= 10.00) {
      resultText =
          'Scored $score points, better luck next time 🤎! \n Want to try again?';
    } else if (score > 10.00 && score <= 20.00) {
      resultText =
          'Scored $score points, you can do better! 🤎! \n Want to try again?';
    } else if (score > 20.00 && score <= 40.00) {
      resultText = 'Scored $score points, not bad 🤎! \n Want to try again?';
    } else if (score > 40.00 && score <= 60.00) {
      resultText = 'Scored $score points, not bad 🤎! \n Want to try again?';
    }
    else if (score > 60.00 && score <= 70.00) {
      resultText = 'Scored $score points, not bad 🤎! \n Want to try again?';
    }else if (score > 80.00 && score <= 100.00) {
      resultText = 'Scored $score points, not bad 🤎! \n Want to try again?';
    }else {
      resultText =
          'You nailed it and scored $score points 🤎! \n Want to try again?';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:30,),
                Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: SizedBox(
                      width: 360,
                      child: Question(
                        resultPhrase,
                      ),
                    )),
              ],
            )));
  }
}
