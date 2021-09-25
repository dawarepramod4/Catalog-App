import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

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
      home: Homepage(),
    );
  }
}
