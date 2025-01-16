import 'package:flutter/material.dart';

class AnimatedConatinerPage extends StatefulWidget {
  const AnimatedConatinerPage({super.key});

  @override
  State<AnimatedConatinerPage> createState() => _AnimatedConatinerPageState();
}

class _AnimatedConatinerPageState extends State<AnimatedConatinerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(),
   body: Column(
    children: [
      GestureDetector(
        onTap: () {
setState(() {
            width = 200;
          height =200;
          _color =Colors.blue;
});
        },
        child: AnimatedContainer(duration: Duration(seconds: 3),color: _color,width: width,height: height,)),

    ],
   ),
    );
  }
}
double width = 100;
double height =100;
Color _color = Colors.red;