import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  int i = 30;
  String name = "Pramod";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Catalog App"),
        
      ),
      body: Center(
        child: Container(
          child: Text("My first Flutter App $i by $name " + name),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
