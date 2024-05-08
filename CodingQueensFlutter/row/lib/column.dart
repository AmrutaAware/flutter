import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnDemo extends StatefulWidget {
  const ColumnDemo({super.key});

  @override
  State<ColumnDemo> createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(
  ),
  
  body: Center(
    child: Container(
    width: 500,
    height: 200,
    color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Column(
        children: [
        Image.asset("assets/img_avatar1.jpeg"),
        ],),
        Padding(
          padding: const EdgeInsets.only(top: 80,left: 30),
          child: const Column(
          
          children: [
          Text("Amruta Aware", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text('intern'),
          ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80,left: 30),
          child: Column(
          children: [Text("4.5")],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80,),
          child: const Column(
          children: [
          
          Icon(Icons.star),
          ],
          ),
        ),
        ],
        
        //  Row(children: [],),
        ),
      ),
    ),
  ),
 
  );
  }
}