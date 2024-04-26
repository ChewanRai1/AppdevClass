import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                color: Colors.amber,
              )
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
