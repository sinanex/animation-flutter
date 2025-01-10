import 'package:clickanimation/conterller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Animatedcontrollerr(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePAge(),
      ),
    );
  }
}

class HomePAge extends StatefulWidget {

   HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
     Center(
       child: Consumer<Animatedcontrollerr>(
         builder:(context, value, child) =>  GestureDetector(
          onTap: () {
            value.changeScale();
          },
          child: AnimatedScale(scale: value.isScale ? 1:2 , duration: Duration(seconds: 1),child: FlutterLogo(),)),
       ),
     ));
  }
}