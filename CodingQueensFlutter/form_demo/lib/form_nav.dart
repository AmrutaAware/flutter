import 'package:flutter/material.dart';

class FormNavigation extends StatelessWidget {
  const FormNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    ),
    body: Center(child: Text("This is home page"),
    
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){
    Navigator.pop(context);
    },child: Text("Go back"),),
    );
  }
}