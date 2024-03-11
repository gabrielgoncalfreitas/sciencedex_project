import 'package:flutter/material.dart';

class HomePageStore extends ChangeNotifier {
  String _name = "gabriel";

  void setName(String name) {
    _name = name;

    notifyListeners();
  }

  String getName() => _name;
}
