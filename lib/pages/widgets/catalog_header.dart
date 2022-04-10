import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: deprecated_member_use
        "Catalog App".text.xl5.bold.color(Theme.of(context).accentColor).make(),
        "Trending Products".text.xl.make()
      ],
    );
  }
}
