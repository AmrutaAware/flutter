// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
    
    ),
    body: Center(
      child: Container(
        height: 350,
        width: 600,
        
       //color: Colors.amber,
      child:  Form(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [Text('Form Fill'),
        TextFormField(
        decoration: InputDecoration(labelText: 'Name:',labelStyle: TextStyle(color: Colors.black),hintText: 'Enter Your Name',hintStyle: TextStyle(color: Colors.white),),
        validator: (Value){
        if (Value==null || Value.isEmpty)
        {
        return 'please Enter value';
        }
        return null;
        },
        ),
        const SizedBox(width: 30,),
        TextFormField(
        decoration: const InputDecoration(labelText: 'Email:', hintText: 'Enter Email Id',hintStyle: TextStyle(color: Colors.white)),
        
        ),
        const SizedBox(width: 30,),
        TextFormField(
        decoration: const InputDecoration(labelText: 'Mobile No:', hintText: 'Enter Mobile Id',hintStyle: TextStyle(color: Colors.white)),
        
        ),
        SizedBox(height: 30),
    // FloatingActionButton(onPressed: (){},child: Text("Submit"),
    // backgroundColor: Colors.blue, 
    //     ),
    FloatingActionButton(onPressed: (){
     if (_formkey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('Processing Data')),
                );
              }
    }, 
    child: Text('submit'),
    
    ),

        ],
        
        ),
      ),
     
    
      ),
      ),
    ),
    );
  }
}