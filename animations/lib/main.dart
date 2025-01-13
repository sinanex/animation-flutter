import 'package:animations/aligment.dart';
import 'package:animations/animatedBuilder.dart';
import 'package:flutter/material.dart';

void main()async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedbuilderExapmle(),
    );
  }
}