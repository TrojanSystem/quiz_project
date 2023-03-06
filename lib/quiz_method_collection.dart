import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quiz_project/quiz_constants.dart';
Expanded selectedQuizHeader(double width, double height) {
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
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '06',
                      style: kkActiveQuestionNumber,
                    ),
                    TextSpan(
                      text: '/',
                      style: kkInActiveQuestionNumber,
                    ),
                    TextSpan(
                      text: '20',
                      style: kkInActiveQuestionNumber,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10,left: 16),
          width: width,
          height: height * 0.01,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => answer(
              answerColor: Colors.red,
              width: width,
              height: height,
            ),
            itemCount: 20,
          ),
        )
      ],
    ),
  );
}