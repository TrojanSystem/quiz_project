import 'package:flutter/material.dart';

import 'package:quiz_project/quiz_constants.dart';

Widget answer({answerColor, width, height}) => Container(
      margin: const EdgeInsets.all(2.0),
      color: answerColor,
      width: width * 0.03,
      height: height * 0.09,
    );

Widget selectedQuizHeader(
    {required double width,
    required double height,
    required question,
    required currentQuestion,
    required currentQuestionIndex}) {
  return Expanded(
    flex: 2,
    child: Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Question',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${currentQuestion + 1}',
                      style: kkActiveQuestionNumber,
                    ),
                    const TextSpan(
                      text: '/',
                      style: kkInActiveQuestionNumber,
                    ),
                    TextSpan(
                      text: '${question.length}',
                      style: kkInActiveQuestionNumber,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 16),
          width: width,
          height: height * 0.01,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => answer(
              answerColor:
                  currentQuestionIndex == index ? Colors.white60 : Colors.red,
              width: width,
              height: height,
            ),
            itemCount: question.length,
          ),
        )
      ],
    ),
  );
}
