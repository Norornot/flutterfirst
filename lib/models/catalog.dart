class CatalogModel {
  static final items = [
    Items(
        "Product01",
        "Iphone 12 pro max",
        "osadsapojsadpadjadpd",
        999,
        "Colors.green",
        "https://images.unsplash.com/photo-1607936854279-55e8a4c64888?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTJ8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
  ];
}

class Items {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Items(this.id, this.name, this.desc, this.price, this.color, this.imageUrl);
}
