import 'package:flutter/material.dart';

class AnimatedPostionPage extends StatefulWidget {
  const AnimatedPostionPage({super.key});

  @override
  State<AnimatedPostionPage> createState() => _AnimatedPostionPageState();
}

class _AnimatedPostionPageState extends State<AnimatedPostionPage> {
  bool isMOved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: isMOved? 250 :50,
            left: isMOved ? 200 :50,
            child: GestureDetector(
            onTap: () {
              setState(() {
            isMOved = !isMOved;
              });
            },
            child: Container(
              
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ), duration: Duration(seconds: 3)),
        ],
      ),
    );
  }
}


