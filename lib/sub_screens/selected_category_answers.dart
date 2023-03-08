import 'package:flutter/material.dart';

import '../data_room/question_model.dart';

class SelectedCategoryAnswers extends StatelessWidget {
  const SelectedCategoryAnswers({
    super.key,
    required this.width,
    required this.height,
    required this.quizAnswer,
  });

  final double width;
  final double height;
  final List quizAnswer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: quizAnswer
            .map(
              (answer) => Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.green,
                    width: 1,
                  ),
                ),
                width: width * 0.85,
                height: height * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        answer,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 18.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
