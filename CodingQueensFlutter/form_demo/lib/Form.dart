import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_demo/form_nav.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("Form Example"),
    ),
body: Center(
  child: Form(
  
  key: _formKey,
  child: Padding(
    padding: const EdgeInsets.all(100.0),
    child: Column(children: [
    TextFormField(
    decoration: InputDecoration(labelText: 'name', hintText: 'Enter Your name'),
    ),
    TextFormField(
    decoration: InputDecoration(labelText: 'Email'),
     validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter email';
            }
            return null;
          },
        
    ),
  
    TextFormField(decoration: InputDecoration(labelText: 'mobile No'),
    
    ),

    const SizedBox(height: 20,),
    FloatingActionButton(onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
               // you'd often call a server or save the information in a database.
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FormNavigation()));

              }
            },child: Text('Submit'),)
    ],),
  )),
),
    );
  }
}