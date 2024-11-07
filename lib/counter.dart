import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int counter = 0;
  int limit = 10;

  bool get isIncrementDisabled => counter >= limit;
  bool get isDecrementDisabled => counter <= 0;

  increment() {
    counter++;
    notifyListeners();
  }

  decrement() {
    counter--;
    notifyListeners();
  }
}
