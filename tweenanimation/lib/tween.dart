import 'package:flutter/material.dart';

class TweenPage extends StatelessWidget {
  const TweenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        tween: ColorTween(begin: Colors.blue, end: Colors.red), // Use ColorTween instead of Tween<Color>
        duration: Duration(seconds: 3),
        builder: (context, value, child) {
          return Center(
            child: Container(
              width: 100,
              height: 100,
              color: value,
            ),
          );
        },
      ),
    );
  }
}
