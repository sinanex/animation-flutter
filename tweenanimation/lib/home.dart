import 'package:flutter/material.dart';
import 'package:lorem_gen/lorem_gen.dart';
import 'package:tweenanimation/details.dart';
import 'package:tweenanimation/imageClass.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: 150,
                child: TweenAnimationBuilder<double>(
                  duration: const Duration(seconds: 3),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (BuildContext context, double value, Widget? child) {
                    return Padding(
                      padding: EdgeInsets.only(top: value * 80, left: 20),
                      child: Opacity(
                        opacity: value,
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    "Animation \nFlutter!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
            activityCard(imageUrl: AllIMages.imageUrl1),
            activityCard(imageUrl: AllIMages.imageUrl2),
            activityCard(imageUrl: AllIMages.imageUrl3),
          ],
        ),
      ),
    );
  }

  Widget activityCard({
    required String imageUrl,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(
                      text: Lorem.text(),
                      image: imageUrl,
                    )));
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(border: Border.all()),
        child: Row(
          children: [
            Hero(
              tag: imageUrl,
              child: CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
            Expanded(child: Text(Lorem.text()))
          ],
        ),
      ),
    );
  }
}
