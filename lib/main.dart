import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/quiz_screens/quiz_homepage.dart';
import 'data_room/data_storage.dart';

void main() async {
  await Hive.initFlutter('Hive Boxes');
  runApp(const QuizSplashScreen());
}

class QuizSplashScreen extends StatelessWidget {
  const QuizSplashScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => DataStorage(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz',
        home: QuizHomePage(),
      ),
    );
  }
}
