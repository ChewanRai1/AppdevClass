import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Direction"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
    ),
    body: SafeArea(
      child: Container(
        height : 400,
        color : Colors.yellow,

        child: const Row(children: [
          Column(
            children: [
              Icon(Icons.call,),
              SizedBox(height: 4,),
              Text('call'),
            ],
          )
        ],),
        
    )));
  }
}