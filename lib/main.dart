// package
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Screen
import 'Screens/home.dart';
import 'Screens/ImagePage.dart';
import 'Screens/SplashScreen.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final DefaultCupertinoLocalizations localizations = CupertinoLocalizations.of(context);
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: splash_screen.id,
      routes: {
        splash_screen.id: (context) => splash_screen(),
        home.id: (context) => home(),
        ImagePage.id: (context) => ImagePage(),

      },
    );
  }
}
