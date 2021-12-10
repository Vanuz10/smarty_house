import 'package:flutter/material.dart';
import 'package:smarty_house/pages/login_page.dart';
import 'package:smarty_house/pages/menu_page.dart';
import 'package:smarty_house/pages/splash_screen_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'splash',
      routes: {
        "splash": (context) => SplashScreenPage(),
        "login": (context) => LoginPage(),
        "menu": (context) => MenuPage(),
      },
    );
  }
}