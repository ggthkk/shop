//import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shirt {
  final String name, price;

  Shirt(this.name, this.price);
}

var basket = IconButton(
  icon: Icon(IconData(5870, fontFamily: 'MaterialIcons')),
  color: Colors.black,
  onPressed: () {},
);





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

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () {},
//       leading: CircleAvatar(
//         child: Text(product.name[0]),
//       ),
//       title: Text(
//         product.name,
//       ),
//     );
//   }
// }

// // class ShoppingList extends StatefulWidget {
// //   const ShoppingList({required this.products, super.key});

// //   final List<Product> products;

// //   @override
// //   _ShoppingListState createState() => _ShoppingListState();
// // }

// // class _ShoppingListState extends State<ShoppingList> {
// //   final _shoppingCart = <Product>{};

// //   void _handleCartChanged(Product product, bool inCart) {
// //     setState(() {});
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Shopping Closet'),
// //       ),
// //       body: ListView(
// //         padding: const EdgeInsets.symmetric(vertical: 8.0),
// //         children: widget.products.map((product) {
// //           return ShoppingListItem(
// //             product: product,
// //             inCart: _shoppingCart.contains(product),
// //           );
// //         }).toList(),
// //       ),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(const MaterialApp(
// //     title: 'Shopping App',
// //     home: ShoppingList(
// //       products: [
// //         Product(name: 'Eggs'),
// //         Product(name: 'Flour'),
// //         Product(name: 'Chocolate chips'),
// //       ],
// //     ),
// //   ));
// //}
