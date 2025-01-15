import 'package:flutter/material.dart';

class AnimatedTextPage extends StatefulWidget {
  const AnimatedTextPage({super.key});

  @override
  State<AnimatedTextPage> createState() => _AnimatedTextPageState();
}

class _AnimatedTextPageState extends State<AnimatedTextPage>
    with TickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))
        ..repeat();
  late Animation _animation =
      Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
      @override
  void initState() {
    super.initState();

    _controller.repeat(reverse: true);
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: AnimatedBuilder(
        animation: _controller,
        child: Text("hello world"),
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(offset: Offset(_animation.value * MediaQuery.of(context).size.width /2,0),child: child,);
        },
      ),),
    );
  }
}
