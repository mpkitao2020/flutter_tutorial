import 'package:flutter/material.dart';

// 他ファイルから使用するために、変数とメソッドの_を削除。
class CounterStore with ChangeNotifier {
  int counter = 0; // _counter→counter

  void incrementCounter() {
    // _incrementCounter→incrementCounter
    counter++;
    notifyListeners();
  }
}
