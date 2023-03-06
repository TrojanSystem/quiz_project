import 'package:flutter/material.dart';
import 'package:quiz_project/quiz_widgets/quiz_button.dart';

import '../quiz_constants.dart';

class QuizCategoryViewAll extends StatelessWidget {
  const QuizCategoryViewAll({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Top Quiz Categories',
              style: kkCategory,
            ),
          ),
          QuizButtons(
            deviceWidth: deviceWidth,
            deviceHeight: deviceHeight,
            buttonFunction: () {},
            buttonTag: 'View all',
          )
        ],
      ),
    );
  }
}


