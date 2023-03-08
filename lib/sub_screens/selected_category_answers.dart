import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/data_room/data_storage.dart';

import '../data_room/question_model.dart';
import '../quiz_method_collection.dart';

class SelectedCategoryAnswers extends StatefulWidget {
  const SelectedCategoryAnswers({
    super.key,
    required this.width,
    required this.height,
    required this.quizAnswer,
    required this.currentQuestionIndex,
    required this.quizCorrectAnswer,
  });

  final double width;
  final double height;
  final List quizAnswer;
  final String quizCorrectAnswer;
  final int currentQuestionIndex;

  @override
  State<SelectedCategoryAnswers> createState() =>
      _SelectedCategoryAnswersState();
}

class _SelectedCategoryAnswersState extends State<SelectedCategoryAnswers> {
  Box? _box;

  @override
  Widget build(BuildContext context) {
    bool isCorrect = Provider.of<DataStorage>(context).isCorrect;
    return Expanded(
      flex: 1,
      child: ListView.builder(
          itemCount: widget.quizAnswer.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (widget.quizAnswer[index] == widget.quizCorrectAnswer) {

                    Provider.of<DataStorage>(context, listen: false)
                        .changeQuestion(widget.currentQuestionIndex);

                    Provider.of<DataStorage>(context, listen: false).score(answer(
                      answerColor: widget.currentQuestionIndex == index
                          ? Colors.white60
                          :Colors.green,
                      width: widget.width,
                      height:widget.height,
                    ));

                  } else {
                    Provider.of<DataStorage>(context, listen: false)
                        .isAnswered(false);
                    Provider.of<DataStorage>(context, listen: false)
                        .changeQuestion(widget.currentQuestionIndex);
                    Provider.of<DataStorage>(context, listen: false).score(
                        answer(
                          answerColor: widget.currentQuestionIndex == index
                              ? Colors.white60
                              : Colors.red,
                          width: widget.width,
                          height: widget.height*0.01,
                        ));
                  }
                  });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.green,
                    width: 1,
                  ),
                ),
                width: widget.width * 0.85,
                height: widget.height * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        widget.quizAnswer[index],
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
            );
          }),
    );
  }
}
