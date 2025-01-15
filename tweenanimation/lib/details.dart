import 'package:flutter/material.dart';
import 'package:tweenanimation/imageClass.dart';

class DetailsPage extends StatelessWidget {
  final String? text;
  final String image;
   DetailsPage({super.key, this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Hero(
                tag: image,
                child: Image.asset(image)),
            ),
            Text(text.toString()),
          ],
        ),
      ),
    );
  }
}