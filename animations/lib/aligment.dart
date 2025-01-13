import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool alignment = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedAlign(
          alignment: alignment ? Alignment.bottomLeft : Alignment.topRight,
          duration: const Duration(seconds: 3),
          child: FlutterLogo(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            alignment = !alignment;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
