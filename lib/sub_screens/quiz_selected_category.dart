import 'package:flutter/material.dart';

import '../quiz_constants.dart';
import '../quiz_method_collection.dart';

class QuizSelectedCategory extends StatelessWidget {
  const QuizSelectedCategory({super.key, required this.selectedQuizTag});

  final String selectedQuizTag;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 26, 51, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(20, 26, 51, 1),
        title: Text(
          selectedQuizTag,
          style: const TextStyle(
            color: Colors.white60,
          ),
        ),
      ),
      body: Column(
        children: [
          selectedQuizHeader(width, height),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }



  Widget answer({answerColor, width, height}) => Container(
        margin: const EdgeInsets.all(2.0),
        color: answerColor,
        width: width * 0.03,
        height: height * 0.09,

      );
}
