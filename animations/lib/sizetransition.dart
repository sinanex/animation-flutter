import 'package:flutter/material.dart';

class SizetransitionAnimation extends StatefulWidget {
  const SizetransitionAnimation({super.key});

  @override
  State<SizetransitionAnimation> createState() => _SizetransitionAnimationState();
}

class _SizetransitionAnimationState extends State<SizetransitionAnimation> with TickerProviderStateMixin {

  late final  AnimationController _controller = AnimationController(vsync: this,duration: Duration(seconds: 3))..repeat();
 late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(sizeFactor: _animation,child: Center(child: FlutterLogo(size: 50,)),),
    );
  }
}