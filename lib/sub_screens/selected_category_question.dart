import 'package:flutter/material.dart';

import '../data_room/question_model.dart';
import '../quiz_constants.dart';
class SelectedCategoryQuestion extends StatelessWidget {
  const SelectedCategoryQuestion({
    super.key,
    required this.quizQuestion,
    required this.currentQuestion,
  });

  final List<QuestionModel> quizQuestion;
  final int currentQuestion;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          quizQuestion[currentQuestion].question,
          style: kkQuestion,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}