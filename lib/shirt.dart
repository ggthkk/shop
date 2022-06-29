// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyShirt extends StatelessWidget {
//   String name;
//   double price;
//   double _width = 50;
//   double _height = 50;
//   Color _color = Colors.orange;

//   @override
//   Widget build(BuildContext context) {}
// }
// import 'package:flutter/material.dart';

// class Product {
//   const Product({required this.name});

//   final String name;
// }

// typedef CartChangedCallback = Function(Product product, bool inCart);

// class ShoppingListItem extends StatelessWidget {
//   ShoppingListItem({
//     required this.product,
//     required this.inCart,
//   }) : super(key: ObjectKey(product));

//   final Product product;
//   final bool inCart;

//   Color _getColor(BuildContext context) {
//     return inCart ? Colors.red : Theme.of(context).primaryColor;
//   }

//   TextStyle? _getTextStyle(BuildContext context) {
//     if (!inCart) return null;

//     return const TextStyle(
//       color: Colors.black54,
//       decoration: TextDecoration.lineThrough,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () {},
//       leading: CircleAvatar(
//         backgroundColor: _getColor(context),
//         child: Text(product.name[0]),
//       ),
//       title: Text(
//         product.name,
//         style: _getTextStyle(context),
//       ),
//     );
//   }
// }

// class ShoppingList extends StatefulWidget {
//   const ShoppingList({required this.products, super.key});

//   final List<Product> products;

//   @override
//   _ShoppingListState createState() => _ShoppingListState();
// }

// class _ShoppingListState extends State<ShoppingList> {
//   final _shoppingCart = <Product>{};

//   void _handleCartChanged(Product product, bool inCart) {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Closet'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         children: widget.products.map((product) {
//           return ShoppingListItem(
//             product: product,
//             inCart: _shoppingCart.contains(product),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     title: 'Shopping App',
//     home: ShoppingList(
//       products: [
//         Product(name: 'Eggs'),
//         Product(name: 'Flour'),
//         Product(name: 'Chocolate chips'),
//       ],
//     ),
//   ));
// }
