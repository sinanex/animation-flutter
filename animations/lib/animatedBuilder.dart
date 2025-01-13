import 'package:flutter/material.dart';

class AnimatedbuilderExapmle extends StatefulWidget {
  const AnimatedbuilderExapmle({super.key});

  @override
  State<AnimatedbuilderExapmle> createState() => _AnimatedbuilderExapmleState();
}

class _AnimatedbuilderExapmleState extends State<AnimatedbuilderExapmle>  with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final _animation = AnimationController(vsync: this,duration: Duration(seconds: 3))..repeat();
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          animation: _animation, builder: (context, child) {
          return Transform.rotate(angle: _animation.value * 2,child: child,);
        },),
      ),
    );
  }
}