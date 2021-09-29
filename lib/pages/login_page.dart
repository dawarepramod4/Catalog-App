// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Text(
        "login Page",
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ));
  }
}
