import 'package:closet/product.dart';
import 'package:closet/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'product.dart';
//import 'Detail.dart';

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
    new ShirtData('GOLDIE', 800.00),
    new ShirtData('HANES', 600.00),
    new ShirtData('MADEWELL', 250.00),
    new ShirtData('XKARLA', 520.00),
    new ShirtData('MILO', 530.00),
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

  // static List<String> shirtname = [
  //   'GOLDIE',
  //   'HANES',
  //   'MADEWELL',
  //   'XKARLA',
  //   'MILO'
  // ];
  // static List shirtprice = [' 800฿', ' 600฿', ' 250฿', '530฿', '520฿'];

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
              itemCount: shirtList.length,
              itemBuilder: (context, index) {
                return ListTile(
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
                    onPressed: () {},
                  ),
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => Detail(
                    //           _shirtData: shirtList[index],
                    //         )));
                  },
                );
              },
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: trouserList.length,
              itemBuilder: (context, index) {
                return ListTile(
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
                    //   // Navigator.of(context).push(MaterialPageRoute(
                    //   //     builder: (context) => FruitDetail(
                    //   //           fruitDataModel: Fruitdata[index],
                    //   //         )));
                  },
                );
              },
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: shoeList.length,
              itemBuilder: (context, index) {
                return ListTile(
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
                    //   // Navigator.of(context).push(MaterialPageRoute(
                    //   //     builder: (context) => FruitDetail(
                    //   //           fruitDataModel: Fruitdata[index],
                    //   //         )));
                  },
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

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'shirt.dart';
// import 'product.dart';
// import 'package:flutter_profile_picture/flutter_profile_picture.dart';

// void main() {
//   runApp(MyApp());
// }

// const _backgroundColor = Color(0xFFF6F9FA);
// const _blueColor = Color(0xFFD1863);
// const _greenColor = Color(0xFF2BBEBA);

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //title: "My App",
//       home: Shop_title(),
//       debugShowCheckedModeBanner: false,
//       //theme: ThemeData(primarySwatch: Colors.orange),
//     );
//   }
// }

// class Shop_title extends StatefulWidget {
//   @override
//   Shop_titleState createState() => Shop_titleState();
// }

// class Shop_titleState extends State<Shop_title>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(vsync: this, length: 3);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: _backgroundColor,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             color: Colors.white,
//             height: 100,
//             child: Row(
//               children: [
//                 Text('Shopping Closet'),
//               ],
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             height: 80,
//             child: TabBar(
//                 controller: _tabController,
//                 isScrollable: true,
//                 tabs: List.generate(
//                   10,
//                   (index) => Shop_tabwidget(),
//                 )),
//           ),
//           Expanded(
//               child: Container(
//             color: Colors.blue,
//           ))
//         ],
//       ),
//     );
//   }
// }

// class Shop_tabwidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 6,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(
//           'Shirt',
//           style: TextStyle(
//               color: _blueColor, fontWeight: FontWeight.bold, fontSize: 13),
//         ),
//       ),
//     );
//   }
// }

// // class homepage extends StatefulWidget {
// //   @override
// //   State<homepage> createState() => _homepageState();
// // }

// // class _homepageState extends State<homepage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return
// //   }
// // }
