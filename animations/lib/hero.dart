import 'package:flutter/material.dart';

class HeroExamplePage extends StatelessWidget {
  const HeroExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListTile(

          leading: Hero(
            tag: 'hero',
            child: Container(
              width: 40,
              height: 40,
              color: Colors.blue,
            ),
          
          ),
          onTap: () => _gotoSecoundPage(context),
          title: Text("list tile"),
        ));
  }
  void _gotoSecoundPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder:(context) {
     return Scaffold(
      appBar: AppBar(title: Text("secoud page"),),
    body: Center(child: Hero(
      tag: 'hero',
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
    ),)
     ); 
    },));
  }
}


