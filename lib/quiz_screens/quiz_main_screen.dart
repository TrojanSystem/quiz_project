import 'package:flutter/material.dart';

import '../quiz_widgets/quiz_category.dart';
import '../quiz_widgets/quiz_category_view_all.dart';
import '../quiz_widgets/quiz_center_screen.dart';
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
            QuizCenterScreen(deviceWidth: deviceWidth, deviceHeight: deviceHeight)
          ],
        ),
      ),
    );
  }
}


