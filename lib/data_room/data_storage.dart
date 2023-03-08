import 'package:flutter/cupertino.dart';

class DataStorage extends ChangeNotifier {
  int currentIndex = 0;

  changeQuestion(index) {
    currentIndex = index + 1;
    notifyListeners();
  }
}
