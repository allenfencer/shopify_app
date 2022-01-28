import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 1;

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  int calculateTotal(int itemprice) {
    int total = (itemprice * count) + 15;
    return total;
  }
}
