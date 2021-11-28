import 'package:flutter_application_1/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  late CatalogModel _catalogModel;

// store ids of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalogModel;
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalogModel = newCatalog;
  }

//get item in cart
  List<Item> get items =>
      _itemIds.map((id) => _catalogModel.getById(id)).toList();

  // get total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);
  void add(Item item) {
    _itemIds.add(item.id);
  }
}
