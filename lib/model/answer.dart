import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SizedBox(
        width: 200,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
          ),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xffECA869))),
      onPressed: selectHandler,
    );
  }
}
