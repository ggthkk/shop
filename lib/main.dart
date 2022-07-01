import 'package:closet/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
//import 'product.dart';
import 'shirt.dart';

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
        primarySwatch: Colors.blue,
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
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('Shopping closet'),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(4.0),
              itemCount: Shirtdata.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(Shirtdata[index].name),
                  subtitle: Text(Shirtdata[index].price),
                  leading: Container(
                    child: ProfilePicture(
                      name: Shirtdata[index].name,
                      radius: 31,
                      fontsize: 21,
                    ),
                  ),
                );
              },
            ),
            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike),
          ],
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
