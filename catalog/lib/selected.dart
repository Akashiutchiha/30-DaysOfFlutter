import 'package:flutter/material.dart';

class Selected_Catalog extends ChangeNotifier {
  List<String> checked = ['Banana'];

  void add(String item) {
    checked.add(item);
    notifyListeners();
  }

  void remove(String item) {
    checked.remove(item);
    notifyListeners();
  }
}
