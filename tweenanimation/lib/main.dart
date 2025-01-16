import 'package:flutter/material.dart';
import 'package:tweenanimation/container.dart';
import 'package:tweenanimation/listpage.dart';
import 'package:tweenanimation/opacity.dart';

void main(){
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedOpaPAge(),
    );
  }
}