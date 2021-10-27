import "package:flutter/material.dart";
import 'package:flutter_application_1/catalog.dart';
import 'package:flutter_application_1/pages/widgets/drawer.dart';
import 'package:flutter_application_1/pages/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  int i = 30;
  String name = "Pramod";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            //itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
                //item: CatalogModel.items[index],
              );
            }),
      ),
      drawer: Mydrawer(),
    );
  }
}
