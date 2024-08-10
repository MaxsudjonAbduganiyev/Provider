import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int count = 10;
  increment(){
    count++;
    notifyListeners();
    print("+ : $count");

  }

  derement(){
    count--;
    notifyListeners();
  }
}