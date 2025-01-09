import 'package:flutter/material.dart';

class Animatedcontroller extends ChangeNotifier {
  double width = 100.0;
  double height = 100.0;
  Color color = Colors.black;
  void changeSize(){
   if(width == 100 && height == 100){
    height = 200;
    width =200;
   color = Colors.blue[100]!;
   }else{
    height =100;
    width =100;
    color = Colors.black;
   }
    notifyListeners();
  }
}