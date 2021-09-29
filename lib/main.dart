import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int i = 30;
  String name = "Pramod";
  bool ismale = true;
  num n = 10.3;
  var day = "Tuesday";
  var date = 10;

  static const pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.deepOrange),
      initialRoute: "/home",
      routes: {"/": (context) => LoginPage(), "/home": (context) => Homepage()},
    );
  }

  bringveg({required bool th, int rupees = 100}) {
    //sector 13
  }
}
