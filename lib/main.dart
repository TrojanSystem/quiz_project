import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quiz_project/quiz_constants.dart';
import 'package:quiz_project/quiz_screens/quiz_homepage.dart';

void main() {
  runApp(const QuizSplashScreen());
}

class QuizSplashScreen extends StatelessWidget {
  const QuizSplashScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
            home: QuizHomePage(),
    );
  }
}



