import 'package:flutter/material.dart';

class CardD extends StatefulWidget {
  const CardD({super.key});

  @override
  State<CardD> createState() => _CardDState();
}

class _CardDState extends State<CardD> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold (
    body: Center(
      child: Card(
      color: Colors.amber,
      elevation: 20,
      child: SizedBox(
      width: 200,
      height: 200,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Card Example"),
      ),
      ),
      
      ),
    ),
    
    );
  }
}