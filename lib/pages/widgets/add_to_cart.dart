import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Store/store.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../catalog.dart';
import '../cart.dart';

class AddtoCart extends StatelessWidget {
  final Item catalog;
  AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  // final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);
    final CartModel _cart = (VxState.store as Mystore).cart;
    // final CatalogModel _catalog = (VxState.store as Mystore).catalog;

    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          // isInCart = isInCart.toggle();
          // _cart.add(catalog);
          // _cart.catalog = _catalog;
          AddMutation(catalog);
        }
      },
      child: isInCart
          ? const Icon(CupertinoIcons.check_mark_circled)
          : "Add to cart".text.sm.make(),
      style: ButtonStyle(
          backgroundColor:
              // ignore: deprecated_member_use
              MaterialStateProperty.all(Theme.of(context).buttonColor),
          shape: MaterialStateProperty.all(const StadiumBorder())),
    );
  }
}
