class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}

class CatalogModel {
  static List<Item>? items;
  // // = [
  //   Item(
  //       id: 2323,
  //       name: "Samsung Guru",
  //       desc: "best budget",
  //       price: 1500,
  //       color: "#33505a",
  //       image:
  //           "https://www.91-img.com/pictures/74844-v1-samsung-metro-b313-mobile-phone-large-1.jpg")
  // // ];
}
