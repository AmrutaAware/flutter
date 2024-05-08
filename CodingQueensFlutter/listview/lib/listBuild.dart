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
    body: ListView.builder(
    itemCount: 30,
    itemBuilder: (context, position){
   
  return Card
    (child: Text(position.toString(),style: TextStyle(fontSize: 22.0),),);
   
    }
    ),
  
  );
  }
}