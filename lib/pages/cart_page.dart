import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/Store/store.dart';
import 'package:flutter_application_1/catalog.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/pages/widgets/themes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: "Cart".text.make(),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [_CartList().p16().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: []);
    // final _cart = CartModel();
    final CartModel _cart = (VxState.store as Mystore).cart;
    return SizedBox(
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "₹${_cart.totalprice}".text.xl4.make(),
        40.widthBox,
        ElevatedButton(
          onPressed: () => {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: "Buying not supported yet".text.make()))
          },
          child: "Buy".text.make(),
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Theme.of(context).buttonColor)),
        ).wh(100, 50),
      ]),
    );
  }
}

class _CartList extends StatelessWidget {
  _CartList({Key? key}) : super(key: key);

  @override
  // State<_CartList> createState() => _CartListState();

  // final _cart = CartModel();
   final CartModel _cart = (VxState.store as Mystore).cart;
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing to Show !"
            .text
            .center
            .xl2
            .color(Colors.grey)
            .makeCentered()
            .py64()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(CupertinoIcons.check_mark_circled),
                  trailing: IconButton(
                      onPressed: () {
                        _cart.remove(_cart.items[index]);
                        // setState(() {});
                      },
                      icon: Icon(CupertinoIcons.clear_circled)),
                  title: _cart.items[index].name.text.make(),
                ));
  }
}
