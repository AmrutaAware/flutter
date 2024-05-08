import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Row(
      children: [
      Center(
        child: Container(height: 150,
        width: 100,
        decoration: BoxDecoration(color: Colors.amber, border: Border.all(color: Colors.black)),
        //height:100,
        child: Column(
        children: [
        Image.network('https://upload.wikimedia.org/wikipedia/commons/4/4c/Garden_strawberry_%28Fragaria_%C3%97_ananassa%29_single2.jpg'),
        Text("Straberries"),
        Text("10.1 MB"),
        
        //Image.asset(''),
        ],
        ),
        ),
      ),],
      ),
    ),);
  }
}