import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';
import 'themes.dart';
import '../../catalog.dart';
import 'package:flutter_application_1/pages/detail_page.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold.make(),
            catalog.desc.text.caption(context).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "₹${catalog.price}".text.bold.xl.make(),
                _AddToCart(catalog: catalog).pOnly(right: 8),
              ],
            )
          ],
        ))
      ],
    )).color(Theme.of(context).cardColor).rounded.square(140).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isadded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isadded = isadded.toggle();
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.add(widget.catalog);
        _cart.catalog = _catalog;

        setState(() {});
      },
      child: isadded
          ? Icon(CupertinoIcons.check_mark_circled)
          : "Add to cart".text.sm.make(),
      style: ButtonStyle(
          backgroundColor:
              // ignore: deprecated_member_use
              MaterialStateProperty.all(Theme.of(context).buttonColor),
          shape: MaterialStateProperty.all(const StadiumBorder())),
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CatalogModel.items!.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.getByPosition(index);
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
        });
  }
}
