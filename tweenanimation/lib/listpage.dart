import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> with TickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  final list = [];

  Future getListData() async {
    for (var i = 0; i < 10; i++) {
      Future.delayed(Duration(milliseconds: 300 * i), () {
        list.add(i + 1);
        _key.currentState!.insertItem(i);
      });
    }
  }

  deleteData(int index)async{
   Future.delayed(Duration(milliseconds: 500),(){
    _key.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(sizeFactor: animation,child: ListTile(
        tileColor: Colors.red,
        title: Text("deleted"),
      ));
    },);
   });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getListData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedList(
        key: _key,
        initialItemCount: list.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(

             
         position: animation.drive(
                  Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                      .chain(CurveTween(curve: Curves.bounceIn))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: IconButton(onPressed: (){
                    deleteData(index);
                  }, icon: Icon(Icons.delete)),
                  tileColor: Colors.blue[100],
                  title: Text(list[index].toString()),
                ),
              ));
        },
      ),
    );
  }
}
