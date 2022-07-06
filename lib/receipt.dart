import 'package:closet/product.dart';
import 'package:flutter/material.dart';

class receipt extends StatefulWidget {
  @override
  State<receipt> createState() => _receiptState();
}

final _controller = TextEditingController();

class _receiptState extends State<receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 189, 244),
      appBar: AppBar(title: Text('PAY')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    spreadRadius: 5,
                    offset: Offset(4, 4)),
              ],
              color: Colors.white,
            ),
            child: Text(
              'รายการ',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FractionColumnWidth(.4),
              1: FractionColumnWidth(.4)
            },
            children: [
              TableRow(children: [
                Column(
                  children: [
                    Text(
                      'รายการ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'จำนวน',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'ราคา',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ]),
              TableRow(children: [
                Column(children: [
                  Container(
                    height: 400,
                  ),
                  // Padding(padding: EdgeInsets.all(8),
                  // child:
                  // ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextButton(
                          child: Icon(Icons.remove, color: Colors.black),
                          //backgroundColor: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.black,
                          child: TextField(
                            controller: _controller,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextButton(onPressed: () {}, child: Icon(Icons.add)),
                      ],
                    )
                  ],
                ),
                Text(''),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'ทั้งหมด',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(''),
                Text(''),
              ]),
            ],
          ),
        ),
        FlatButton(
          child: Text('Check'),
          color: Colors.blue,
          onPressed: () {},
        )
      ]),
    );
  }
}

class receiptitem extends StatelessWidget {
  final ShirtData item;
  receiptitem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(item.name)],
    );
  }
}
