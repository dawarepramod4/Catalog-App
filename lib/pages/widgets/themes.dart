import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class myTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamcolor,
      // ignore: deprecated_member_use
      buttonColor: BluishColor,
      // ignore: deprecated_member_use
      accentColor: BluishColor,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),

          // ignore: prefer_const_constructors
          toolbarTextStyle: TextStyle(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20))

      // textTheme: GoogleFonts.latoTextTheme(),
      );
  // ignore: non_constant_identifier_names
  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      // ignore: deprecated_member_use
      buttonColor: Vx.blueGray500,
      canvasColor: darkcreamcolor,
      // ignore: deprecated_member_use
      accentColor: Vx.white,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),

          // ignore: prefer_const_constructors
          toolbarTextStyle: TextStyle(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)));

  // color
  static Color creamcolor = const Color(0xfff5f5f5);
  static Color BluishColor = const Color(0xff403b58);
  static Color darkcreamcolor = Vx.blueGray800;
  static Color lightBluishColor = Vx.purple600;
}
