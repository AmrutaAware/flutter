import 'package:flutter/material.dart';

class CardDemo
 extends StatefulWidget {
  const CardDemo
  ({super.key});

  @override
  State<CardDemo> createState() => _CardDemoState();
  
}


class _CardDemoState extends State<CardDemo
> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    body: ListView.separated
    (itemBuilder: (con, position) 
{
return Card(
child: Text('list item $position'),
);
},
    separatorBuilder: (con, position){
    return Text('sep $position');
    }, itemCount: 10),
    );
  }
}