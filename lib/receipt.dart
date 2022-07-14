import 'package:flutter/material.dart';
//import 'package:scoped_model/scoped_model.dart';
//import 'package:shopping/cartmodel.dart';
import 'cartmodel.dart';
import 'product.dart';

class CartPage extends StatefulWidget {
  List cart = [];
  List p_cart = [];
  List id_shirt = [];
  List count = ["a", "b", "c", "d"];

  CartPage({required this.cart, required this.p_cart, required this.id_shirt});

  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    distinct();
    //distinct1();
    super.initState();
  }

  void distinct() {
    var distinctlist = widget.cart.toSet().toList();
    widget.cart = distinctlist;
  }

  //void distinct1() {
  //  var distinctlist = widget.p_cart.toSet().toList();
  //  widget.p_cart = distinctlist;
  //}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (widget.id_shirt == "1") {
      //count[a] = 1;
      //var count1 = widget.id_shirt.where((item) => item == "1").length;
    } else if (widget.id_shirt == "2") {
      var count2 = widget.id_shirt.where((item) => item == "2").length;
    } else if (widget.id_shirt == "3") {
      var count3 = widget.id_shirt.where((item) => item == "3").length;
    } else if (widget.id_shirt == "4") {
      var count4 = widget.id_shirt.where((item) => item == "4").length;
    } else if (widget.id_shirt == "5") {
      var count5 = widget.id_shirt.where((item) => item == "5").length;
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Cart"),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  "Clear",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed:
                    () {} /*ScopedModel.of<CartModel>(context).clearCart()*/
                )
          ],
        ),
        // bottomNavigationBar: new Container(
        //   color: Colors.white,
        //   child: Row(
        //     children: <Widget>[
        //       Expanded(
        //           child: ListTile(
        //         title: new Text("Total :"),
        //         subtitle: new Text("\$230"),
        //       )),
        //       Expanded(
        //           child: new MaterialButton(
        //         onPressed: () {},
        //         child: new Text(
        //           "Check out",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //         color: Colors.indigo,
        //       ))
        //     ],
        //   ),
        // ),
        body: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: widget.cart.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(widget.cart[index].toString()),
                      subtitle: Text(widget.p_cart[index].toString()),
                      //" x " +
                      //widget.p_cart[index].toString() +
                      //" = " +
                      //(widget.cart[index].qty *
                      //        widget.p_cart[index].toString())
                      //    .toString()),
                      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                          //child: Text('You have ${count} Items'),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // model.updateProduct(model.cart[index],
                            //     model.cart[index].qty - 1);
                            // model.removeProduct(model.cart[index]);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // model.updateProduct(model.cart[index],
                            //     model.cart[index].qty + 1);
                            // model.removeProduct(model.cart[index]);
                          },
                        ),
                      ]),
                    );
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Total: \$ "
                    // ScopedModel.of<CartModel>(context,
                    //         rebuildOnChange: true)
                    // .totalCartValue
                    // .toString() +
                    ,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.yellow[900],
                    textColor: Colors.white,
                    elevation: 0,
                    child: Text("BUY NOW"),
                    onPressed: () {},
                  ))
            ])));
  }
}

// class CartModel {
//   List<ShirtData> cart = [];
//   double totalCartValue = 0;
//   int get total => cart.length;

//   void addShirtData(ShirtData) {
//     int index = cart.indexWhere((i) => i.id == ShirtData.id);
//     print(index);
//     if (index != -1)
//       updateProduct(ShirtData, ShirtData.qty + 1);
//     else {
//       cart.add(ShirtData);
//       calculateTotal();
//     }
//   }

//   void removeProduct(ShirtData) {
//     int index = cart.indexWhere((i) => i.id == ShirtData.id);
//     cart[index].qty = 1;
//     cart.removeWhere((item) => item.id == ShirtData.id);
//     calculateTotal();
//   }

//   void updateProduct(product, qty) {
//     int index = cart.indexWhere((i) => i.id == product.id);
//     cart[index].qty = qty;
//     if (cart[index].qty == 0) removeProduct(product);

//     calculateTotal();
//   }

//   void clearCart() {
//     cart.forEach((f) => f.qty = 1);
//     cart = [];
//   }

//   void calculateTotal() {
//     totalCartValue = 0;
//     cart.forEach((f) {
//       totalCartValue += f.price * f.qty;
//     });
//   }
// }

// class ShirtData {
//   final String id;
//   final String name;
//   final double price;
//   int qty;

//   ShirtData(this.id, this.name, this.price, this.qty);
// }







// //import 'package:shopping_cart_app/model/cart_model.dart';
// import 'package:closet/product.dart';
// import 'package:flutter/material.dart';
// import 'product.dart';

// class Cart extends StatelessWidget {
//   final ShirtData nameProduct_cart;
//   const Cart({Key? key, required this.nameProduct_cart}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 236, 189, 244),
//       appBar: AppBar(title: Text('PAY')),
//       body: Column(children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 80,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 20,
//                     spreadRadius: 5,
//                     offset: Offset(4, 4)),
//               ],
//               color: Colors.white,
//             ),
//             child: Text(
//               'รายการ',
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(10),
//           child: Table(
//             border: TableBorder.all(),
//             columnWidths: {
//               0: FractionColumnWidth(.4),
//               1: FractionColumnWidth(.4)
//             },
//             children: [
//               TableRow(children: [
//                 Column(
//                   children: [
//                     Text(
//                       'รายการ',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'จำนวน',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'ราคา',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 )
//               ]),
//               TableRow(children: [
//                 Column(children: [
//                   Container(
//                     height: 400,
//                     child: ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: nameProduct_cart.name.length == 0
//                           ? 0
//                           : nameProduct_cart.name.length,
//                       itemBuilder: (context, index) {
//                         return Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Text(([index + 1]).toString()),
//                                 Text(nameProduct_cart.name[index].toString())
//                               ],
//                             )
//                           ],
//                         );
//                       },
//                     ),
//                   ),
//                 ]),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         TextButton(
//                           child: Icon(Icons.remove, color: Colors.black),
//                           //backgroundColor: Colors.white,
//                           onPressed: () {},
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           width: 20,
//                           height: 20,
//                           child: TextField(
//                             controller: TextEditingController(text: "0"),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         TextButton(onPressed: () {}, child: Icon(Icons.add)),
//                       ],
//                     )
//                   ],
//                 ),
//                 Text("\$ ${nameProduct_cart.price}"),
//               ]),
//               TableRow(children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'ทั้งหมด',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 Text(''),
//                 Text(''),
//               ]),
//             ],
//           ),
//         ),
//         FlatButton(
//           child: Text('Check'),
//           color: Colors.blue,
//           onPressed: () {},
//         )
//       ]),
//     );
//   }
// }

// class receip extends StatefulWidget {
//   // const Cart({Key? key, required this.nameProduct_cart}) : super(key: key);
//   // final ShirtData nameProduct_cart;

//   @override
//   State<receip> createState() => _receipState();
// }

// class _receipState extends State<receip> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 236, 189, 244),
//       appBar: AppBar(title: Text('PAY')),
//       body: Column(children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 80,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 20,
//                     spreadRadius: 5,
//                     offset: Offset(4, 4)),
//               ],
//               color: Colors.white,
//             ),
//             child: Text(
//               'รายการ',
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(10),
//           child: Table(
//             border: TableBorder.all(),
//             columnWidths: {
//               0: FractionColumnWidth(.4),
//               1: FractionColumnWidth(.4)
//             },
//             children: [
//               TableRow(children: [
//                 Column(
//                   children: [
//                     Text(
//                       'รายการ',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'จำนวน',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'ราคา',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 )
//               ]),
//               TableRow(children: [
//                 Column(children: [
//                   Container(
//                     height: 400,
//                   ),
//                 ]),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         TextButton(
//                           child: Icon(Icons.remove, color: Colors.black),
//                           //backgroundColor: Colors.white,
//                           onPressed: () {},
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           width: 20,
//                           height: 25,
//                           child: TextField(
//                             controller: TextEditingController(text: "0"),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         TextButton(onPressed: () {}, child: Icon(Icons.add)),
//                       ],
//                     )
//                   ],
//                 ),
//                 Text(""),
//               ]),
//               TableRow(children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'ทั้งหมด',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 Text(''),
//                 Text(''),
//               ]),
//             ],
//           ),
//         ),
//         FlatButton(
//           child: Text('Check'),
//           color: Colors.blue,
//           onPressed: () {},
//         )
//       ]),
//     );
//   }
// }

// // class receiptitem extends StatelessWidget {
// //   final ShirtData item;
// //   receiptitem({Key? key, required this.item}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //         shrinkWrap: true,
// //         padding: const EdgeInsets.all(10),
// //         //itemExtent: 100.0,
// //         itemCount: item.name.length,
// //         itemBuilder: (context, index) {
// //           return Column(
// //             children: [
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   //Text(([index + 1]).toString()),
// //                   Text(item.name)
// //                 ],
// //               )
// //             ],
// //           );
// //         });
// //   }
// // }
