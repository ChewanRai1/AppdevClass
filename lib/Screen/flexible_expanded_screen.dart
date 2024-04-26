import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          ),
          Container(
            width: double.infinity,
            height: 600,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}