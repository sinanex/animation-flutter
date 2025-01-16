import 'package:flutter/material.dart';

class AnimatedOpaPAge extends StatefulWidget {
  const AnimatedOpaPAge({super.key});

  @override
  State<AnimatedOpaPAge> createState() => _AnimatedOpaPAgeState();
}

class _AnimatedOpaPAgeState extends State<AnimatedOpaPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
          onTap: () {
            setState(() {
              opacity = opacity == 1.0 ? 0.0 : 1.0;
            });
          },
          child: AnimatedOpacity(
            curve: Curves.bounceOut,
            opacity: opacity,
            duration: Duration(seconds: 3),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          )),
    );
  }
}

double opacity = 1;
