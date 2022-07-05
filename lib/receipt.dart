import 'package:flutter/material.dart';

class receipt extends StatefulWidget {
  const receipt({Key? key}) : super(key: key);

  @override
  State<receipt> createState() => _receiptState();
}

class _receiptState extends State<receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 189, 244),
      appBar: AppBar(title: Text('PAY')),
      body: Column(
        children: [
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
              children: [],
            ),
          ),
          Container(
            height: 80,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
