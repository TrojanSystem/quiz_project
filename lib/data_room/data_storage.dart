import 'package:flutter/cupertino.dart';

class DataStorage extends ChangeNotifier {
  int currentIndex = 0;
  bool isCorrect = false;
  List<Widget> scoreKeeper = [];

  changeQuestion(index) {
    currentIndex = index + 1;
    notifyListeners();
  }

  score(widget) {
    scoreKeeper.add(widget);
    notifyListeners();
  }

  isAnswered(answer) {
    isCorrect = answer;
    notifyListeners();
  }
}
