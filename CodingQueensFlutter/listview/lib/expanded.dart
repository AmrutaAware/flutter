import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({super.key});

  @override
  State<Expand> createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(),
    body: Row(
   children: [
   Expanded(
   flex: 2,
     child: Container(
     width: 100,
     height: 100,
     color: Colors.yellow,
     ),
   ),
SizedBox(width: 20),
   Expanded(
     flex: 3,
       child: Container(
       width: 100,
       height: 100,
       color: Colors.pink,
       ),
     ),
   SizedBox(width: 20),
   Expanded(
   flex: 1,
     child: Container(
     width: 100,
     height: 100,
     color: Colors.orange,
     ),
   ),
SizedBox(width: 20),
   Expanded(
     child: Container(
     width: 100,
     height: 100,
     color: Colors.blue,
     ),
   ),
   ], 
    )  
     
    
  );
  
  }
}