import 'package:flutter/material.dart';

class ListPageAnimationPage extends StatefulWidget {
  const ListPageAnimationPage({super.key});

  @override
  State<ListPageAnimationPage> createState() => _ListPageAnimationPageState();
}

class _ListPageAnimationPageState extends State<ListPageAnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animation = Tween<double>(begin: 0.0, end: 5.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceIn),
    );
  }

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: AnimatedBuilder(
              builder: (context, child) {
                return Transform.translate(
                  child: child,
                    offset: Offset(_animation.value * 1, 0));
              },
              animation: _animation,
              child: Text("text")),
        ));
  }
}
