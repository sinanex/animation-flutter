import 'package:flutter/material.dart';
import 'package:tweenanimation/tween.dart';






void main(){
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      home: TweenPage()
    );
  }
}