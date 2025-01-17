import 'package:flutter/material.dart';

class AnimationBuilderPage extends StatefulWidget {
  const AnimationBuilderPage({super.key});

  @override
  State<AnimationBuilderPage> createState() => _AnimationBuilderPageState();
}

class _AnimationBuilderPageState extends State<AnimationBuilderPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat();
    _animation = Tween<double>(begin: 0.0, end: 5.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotationTransition(
        turns: _animation,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}
