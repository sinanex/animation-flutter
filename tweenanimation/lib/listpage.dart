import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {
  const Listpage({super.key});

  @override
  State<Listpage> createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  List<int> arr = []; 


  Future getListData()async{
     for(var i=0;i<10;i++){
      Future.delayed(Duration(milliseconds: 100*i),(){
           arr.add(i);
          _key.currentState!.insertItem(i);
      });
     }
  }
  @override
  void initState() {
    getListData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body:  AnimatedList(
      key: _key,
      itemBuilder: (context, index, animation) {
      return SlideTransition(
        position: animation.drive(Tween<Offset>(begin: Offset(1, 0),end: Offset(0, 0))),
        child: ListTile(
          title: Text(arr[index].toString()),
        ),
      );
    },));
  }
}