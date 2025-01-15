import 'package:flutter/material.dart';

class StarAnimation extends StatelessWidget {

  final Duration _duration = Duration(seconds: 3);
  Color _isAciveColor = Colors.yellow;
  Color _deActiveColor = Colors.grey;
      bool isAcive = true;
   StarAnimation({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: Center(child: AnimatedScale(scale: isAcive ? 1 : 0.5, duration: _duration,child: Icon(Icons.star,color: isAcive? _isAciveColor : _deActiveColor,),)),
    );
  }
}