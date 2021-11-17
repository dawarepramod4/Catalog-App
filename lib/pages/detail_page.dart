import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/catalog.dart';

class DetailPage extends StatelessWidget {
  final Item catalog;

  const DetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myTheme.creamcolor,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Center(child: Image.network(catalog.image))),
          ],
        ),
      ),
    );
  }
}
