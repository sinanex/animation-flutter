import 'dart:developer';

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? text;
  final String image;
  DetailsPage({super.key, this.text, required this.image});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Color?> animation;
  late final Animation<double> scaleAnimation;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = ColorTween(end: Colors.red, begin: Colors.grey)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceIn));

    scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.5), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.5, end: 1.2), weight: 35),
      TweenSequenceItem(tween: Tween(begin: 1.2, end: 1.0), weight: 20)
    ]).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Hero(tag: widget.image, child: Image.asset(widget.image)),
            ),
            ScaleTransition(
              scale: scaleAnimation,
              child: AnimatedBuilder(
                animation: animation,
                builder: (BuildContext context, Widget? child) {
                  return IconButton(
                      onPressed: () {
                        log(controller.status.toString());

                        if (controller.status == AnimationStatus.completed) {
                          controller.reverse();
                        } else if (controller.status ==
                            AnimationStatus.dismissed) {
                          controller.forward();
                        }
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: animation.value,
                      ));
                },
              ),
            ),
            Text(widget.text.toString()),
          ],
        ),
      ),
    );
  }
}
