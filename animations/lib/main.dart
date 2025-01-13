
import 'package:animations/hero.dart';
import 'package:animations/sizetransition.dart';
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
      home: SizetransitionAnimation(),
    );
  }
}