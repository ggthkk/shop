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
    );
  }
}
