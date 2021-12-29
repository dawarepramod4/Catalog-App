import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/catalog.dart';
import 'package:flutter_application_1/pages/cart.dart';

class Mystore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  Mystore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
