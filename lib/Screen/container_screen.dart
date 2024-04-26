import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center, //text in the center of container

          child: const Text('I am super man'),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              border: Border.all(
                color: Colors.black,
                width: 2,
              )),
        ),
      ),
    );
  }
}
