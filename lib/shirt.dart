//import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Shirt1 {
  final String name, price;

  Shirt1(this.name, this.price);
}

class Shirt extends StatefulWidget {
  @override
  State<Shirt> createState() => _ShirtState();
}

class _ShirtState extends State<Shirt> {
  static List<String> shirtname = [
    'GOLDIE',
    'HANES',
    'MADEWELL',
    'XKARLA',
    'MILO',
  ];
  static List<String> shirtprice = [' 800฿', ' 600฿', ' 250฿', '530฿', '520฿'];

  final List<Shirt1> Shirtdata = List.generate(shirtname.length,
      (index) => Shirt1('${shirtname[index]}', '${shirtprice[index]}'));
  @override
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Shirtdata.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(Shirtdata[index].name),
          subtitle: Text(Shirtdata[index].price),
          // trailing: IconButton(
          //     onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ProfilePicture(
                name: Shirtdata[index].name,
                radius: 31,
                fontsize: 21,
              ),
            ),
          ),
        );
      },
    );
  }
}

// var basket = IconButton(
//   icon: Icon(IconData(5870, fontFamily: 'MaterialIcons')),
//   color: Colors.black,
//   onPressed: () {},
// );





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
