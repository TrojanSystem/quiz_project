import 'package:flutter/material.dart';

import '../quiz_widgets/quiz_category.dart';
import '../quiz_widgets/quiz_category_view_all.dart';
import '../quiz_widgets/quiz_user_profile.dart';

class QuizMainScreen extends StatelessWidget {
  const QuizMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: Stack(
          children: [
            Column(
              children: [
                const QuizUserProfile(),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                QuizCategoryViewAll(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight),
                QuizCategory(),
              ],
            ),
            Positioned(
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
            )
          ],
        ),
      ),
    );
  }
}
