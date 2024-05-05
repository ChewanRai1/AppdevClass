import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double num1 = 0.0, num2 = 0.0, result = 0.0;
  String operation = '';

  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();

  void calculate() {
    num1 = double.parse(num1Controller.text);
    num2 = double.parse(num2Controller.text);

    switch (operation) {
      case 'Add':
        result = num1 + num2;
        break;
      case 'Subtract':
        result = num1 - num2;
        break;
      case 'Multiply':
        result = num1 * num2;
        break;
      case 'Divide':
        result = num1 / num2;
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'First number',
              ),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Second number',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      operation = 'Add';
                    });
                    calculate();
                  },
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      operation = 'Subtract';
                    });
                    calculate();
                  },
                  child: const Text('Subtract'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      operation = 'Multiply';
                    });
                    calculate();
                  },
                  child: const Text('Multiply'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      operation = 'Divide';
                    });
                    calculate();
                  },
                  child: const Text('Divide'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}