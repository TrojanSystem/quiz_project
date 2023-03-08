import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/data_room/question_model.dart';
import 'package:quiz_project/sub_screens/selected_category_answers.dart';
import 'package:quiz_project/sub_screens/selected_category_footer.dart';
import 'package:quiz_project/sub_screens/selected_category_question.dart';

import '../data_room/data_storage.dart';
import '../quiz_method_collection.dart';

class QuizSelectedCategory extends StatelessWidget {
  QuizSelectedCategory({super.key, required this.selectedQuizTag});

  final String selectedQuizTag;

  final quizQuestion = QuestionModel.questionList;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final currentIndex = Provider.of<DataStorage>(context).currentIndex;
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
          selectedQuizHeader(
            context: context,
            currentQuestionIndex: currentIndex + 1,
            width: width,
            height: height,
            question: quizQuestion,
            currentQuestion: currentIndex,
          ),
          Expanded(
            flex: 10,
            child: SizedBox(
              child: Column(
                children: [
                  SelectedCategoryQuestion(
                    quizQuestion: quizQuestion,
                    currentQuestion: currentIndex,
                  ),
                  SelectedCategoryAnswers(
                    currentQuestionIndex: currentIndex,
                    width: width,
                    height: height,
                    quizAnswer: quizQuestion[currentIndex].incorrectAnswers,
                    quizCorrectAnswer: quizQuestion[currentIndex].correctAnswer,
                  ),
                ],
              ),
            ),
          ),
          SelectedCategoryFooter(
              height: height, width: width, currentQuestion: currentIndex),
        ],
      ),
    );
  }
}
