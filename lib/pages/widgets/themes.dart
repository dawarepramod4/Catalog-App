import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class myTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
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
  static ThemeData get Darktheme => ThemeData(
        brightness: Brightness.dark,
      );

  // color
  static Color creamcolor = const Color(0xfff5f5f5);
  static Color BluishColor = const Color(0xff403b58);

}
