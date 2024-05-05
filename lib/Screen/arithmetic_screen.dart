import 'package:flutter/material.dart';

class ArithmeticScreen extends StatelessWidget {
  const ArithmeticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: const Text("Arithmetic"),
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter First no",
                  ),
                ),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter second no",
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: const Text("Add")),
                ),
                const Text(
                  "The sum is : 0",
                  style: TextStyle(fontSize: 32),
                )
              ],
            ))
            );
  }
}
