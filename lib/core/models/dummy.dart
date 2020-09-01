class Categories {
  final int id, count;
  final String name;
  final List<Product> products;

  const Categories({this.id, this.count, this.name, this.products});
}

const List<Categories> categories = [
  Categories(id: 1, count: 2, name: 'Serba Ayam', products: [
    Product(
      id: 1,
      price: 13000,
      stock: 10,
      name: 'Ayam Geprek Sambal Ijo',
    ),
    Product(
      id: 2,
      price: 13000,
      stock: 10,
      name: 'Ayam Geprek Sambal Merah',
    )
  ]),
  Categories(id: 1, count: 2, name: 'Serba Bebek', products: [
    Product(
      id: 3,
      price: 13000,
      stock: 10,
      name: 'Bebek Bakar Sambal Terasi',
    ),
    Product(
      id: 4,
      price: 13000,
      stock: 10,
      name: 'Bebek Bakar Sambal Kecap',
    )
  ]),
];

class Product {
  final int id, price, stock;
  final String name;

  const Product({this.id, this.price, this.stock, this.name});
}
