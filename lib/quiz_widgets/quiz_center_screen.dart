import 'package:flutter/material.dart';
class QuizCenterScreen extends StatelessWidget {
  const QuizCenterScreen({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: deviceWidth * 0.3,
      left: deviceWidth * 0.1,
      child: Container(
        width: deviceWidth * 0.8,
        height: deviceHeight * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black,
        ),
      ),
    );
  }
}