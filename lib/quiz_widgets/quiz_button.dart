import 'package:flutter/material.dart';

class QuizButtons extends StatelessWidget {
  const QuizButtons(
      {super.key,
      required this.deviceWidth,
      required this.deviceHeight,
      required this.bgColor,
      required this.textColor,
      required this.buttonFunction,
      required this.buttonTag});

  final double deviceWidth;
  final double deviceHeight;
  final VoidCallback buttonFunction;
  final String buttonTag;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: GestureDetector(
          child: Container(
            width: deviceWidth * 0.20,
            height: deviceHeight * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgColor,
            ),
            child: Center(
              child: Text(
                buttonTag,
                style:  TextStyle(
                  color:textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
