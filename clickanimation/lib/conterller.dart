import 'package:flutter/material.dart';

class Animatedcontrollerr extends ChangeNotifier {
  bool isScale = false;
  void changeScale() {
    isScale = !isScale;
    notifyListeners();
  }
}
