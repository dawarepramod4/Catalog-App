import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  int i = 30;
  String name = "Pramod";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Container(
          child: Text("My first Flutter App $i by $name " + name),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
