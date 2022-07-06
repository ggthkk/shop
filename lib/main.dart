import 'dart:ffi';

import 'package:closet/Detail.dart';
import 'package:closet/product.dart';
import 'package:closet/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'product.dart';
import 'Detail.dart';
import 'receipt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List shirtList = [
    new ShirtData('1', 'GOLDIE', 800.00),
    new ShirtData('2', 'HANES', 600.00),
    new ShirtData('3', 'MADEWELL', 250.00),
    new ShirtData('4', 'XKARLA', 520.00),
    new ShirtData('5', 'MILO', 530.00),
  ];
  static List trouserList = [
    new TrouserData('Blackberrys', 954.00),
    new TrouserData('Parx', 899.00),
    new TrouserData('Levi_s', 1552.00),
    new TrouserData('Arrow', 2498.00),
    new TrouserData('Reebok', 849.00),
  ];
  static List shoeList = [
    new ShoeData('Nike', 1500.00),
    new ShoeData('Adidas', 2000.00),
    new ShoeData('Fila', 2200.00),
    new ShoeData('Bata', 750.00),
    new ShoeData('Puma', 900.00),
  ];

  int number = 0;
  List count = [];
  void addnumber() {
    number++;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: ('Shirt'),
              ),
              Tab(
                text: ('Troeser'),
              ),
              Tab(
                text: ('Shoe'),
              ),
            ],
          ),
          title: Text('Shopping closet'),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemExtent: 100.0,
              itemCount: shirtList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(shirtList[index].name),
                    subtitle: Text("\$ ${shirtList[index].price}"),
                    leading: Container(
                      child: ProfilePicture(
                        name: shirtList[index].name[0],
                        radius: 31,
                        fontsize: 21,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => receipt()));
                        // this.count = shirtList[index].id;

                        // // if (this.count == '1') {
                        // //   addnumber();
                        // // }
                        // print(this.number);
                        // print(shirtList[index].id);
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Detail(shirtData: shirtList[index]))));
                    },
                  ),
                );
              },
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemExtent: 100.0,
              itemCount: trouserList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(trouserList[index].name),
                    subtitle: Text("\$ ${trouserList[index].price}"),
                    leading: Container(
                      child: ProfilePicture(
                        name: trouserList[index].name[0],
                        radius: 31,
                        fontsize: 21,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Deail1(trouserData: trouserList[index]))));
                    },
                  ),
                );
              },
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemExtent: 100.0,
              itemCount: shoeList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(shoeList[index].name),
                    subtitle: Text("\$ ${shoeList[index].price}"),
                    leading: Container(
                      child: ProfilePicture(
                        name: shoeList[index].name[0],
                        radius: 31,
                        fontsize: 21,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Deail2(shoeData: shoeList[index]))));
                    },
                  ),
                );
              },
            ),
          ],
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                child: Text('Add'),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => receipt())));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
