import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String fullname;
  const OutputScreen({required this.fullname, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hi $fullname',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
