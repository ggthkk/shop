import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'shirt.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: homepage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  static List<String> shirtname = [
    'GOLDIE',
    'HANES',
    'MADEWELL',
    'XKARLA',
    'MILO',
  ];
  static List<String> shirtprice = [' 800฿', ' 600฿', ' 250฿', '530฿', '520฿'];

  final List<Shirt> Shirtdata = List.generate(shirtname.length,
      (index) => Shirt('${shirtname[index]}', '${shirtprice[index]}'));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Shirt',
                  ),
                  Tab(
                    text: 'Trousers',
                  ),
                  Tab(
                    text: 'Shoe',
                  ),
                ],
              ),
              title: Text('Shopping Closet'),
            ),
            body: ListView.builder(
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
            )));
  }
}
