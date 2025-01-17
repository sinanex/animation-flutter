import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tweenanimation/listpage.dart';
import 'package:tweenanimation/translate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';






void main(){
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ml'),
        Locale('en')
      ],
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      home: ListPageAnimationPage()
    );
  }
}