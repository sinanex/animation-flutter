import 'dart:developer';

import 'package:clickanimation/conterller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Animatedcontroller(),
      child: MaterialApp(
        home: HomePAge(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<Animatedcontroller>(
        builder:(context, value, child) =>  GestureDetector(
          onTap: () {
            value.changeSize();
          },
          child: AnimatedContainer(duration: Duration(seconds: 2),
          color: value.color,
          width: value.width,
          height: value.height,
                ),
        ),
      )
      );
  }
}