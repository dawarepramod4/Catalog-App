import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,

        // textTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.deepOrange),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.homeroute: (context) => Homepage()
      },
    );
  }

  bringveg({required bool th, int rupees = 100}) {
    //sector 13
  }
}
