import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../catalog.dart';
import '../cart.dart';

class AddtoCart extends StatefulWidget {
  final Item catalog;
  const AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddtoCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddtoCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();

          _cart.add(widget.catalog);
          _cart.catalog = _catalog;

          
        }
        setState(() {});
      },
      child: isInCart
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