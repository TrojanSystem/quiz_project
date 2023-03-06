import 'package:flutter/material.dart';
class QuizButtons extends StatelessWidget {
  const QuizButtons(
      {super.key,
        required this.deviceWidth,
        required this.deviceHeight,
        required this.buttonFunction,
        required this.buttonTag});

  final double deviceWidth;
  final double deviceHeight;
  final VoidCallback buttonFunction;
  final String buttonTag;

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
              color: const Color.fromRGBO(6, 209, 243, 0.2),
            ),
            child: Center(
              child: Text(
                buttonTag,
                style: const TextStyle(
                  color: Color.fromRGBO(6, 209, 243, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}