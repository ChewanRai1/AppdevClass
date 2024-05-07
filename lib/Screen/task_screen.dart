import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Practice"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 2,
      ),
    );
  }
}
