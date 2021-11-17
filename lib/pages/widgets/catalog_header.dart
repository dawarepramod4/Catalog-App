

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
        "Catalog App".text.xl5.bold.color(myTheme.BluishColor).make(),
        "Trending Products".text.xl.make()
      ],
    );
  }
}