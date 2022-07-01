import 'package:meta/meta.dart' show required;

// class Shop_Product {
//   const Shop_Product({
//     required this.name,
//     required this.products,
//   });
//   final String name;
//   final List<Shop_item> products;
// }

class Shop_item {
  const Shop_item({
    required this.name,
    required this.price,
  });
  final String name;
  final String price;
}

const ShirtProduct = {
  Shop_item(name: 'GOLDIE', price: '800.0'),
  Shop_item(name: 'HANES', price: '600.0'),
  Shop_item(name: 'MADEWELL', price: '250.0'),
  Shop_item(name: 'XKARLA', price: '530.0'),
  Shop_item(name: 'MILO', price: '250.0'),
};

const TrouserProduct = {
  Shop_item(name: 'Blackberrys', price: '954.0'),
  Shop_item(name: 'Parx', price: ' 899.0'),
  Shop_item(name: 'Levi_s', price: ' 1552.0'),
  Shop_item(name: 'Arrow', price: '2498.0'),
  Shop_item(name: 'Reebok', price: ' 849.0'),
};
const shopProduct = {
  Shop_item(name: 'Nike', price: '1500.0'),
  Shop_item(name: 'Adidas', price: '2000.0'),
  Shop_item(name: 'Fila', price: '2200.0'),
  Shop_item(name: 'Bata', price: '750.0'),
  Shop_item(name: 'Puma', price: '750.0'),
};
