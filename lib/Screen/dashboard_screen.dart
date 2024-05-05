import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/area_circle_screen.dart';
import 'package:flutter_application_1/Screen/simple_interest.dart';
import 'add_two_no.dart'; // Import the Add.dart file

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        title: const Text("Direction"),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddTwoNo()),
                    );
                  },
                  child: const Text("Add")),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    // .pushreplacement -> there won't be back button
                    context,
                    MaterialPageRoute(builder: (context) => const SimpleInterest()),
                  );
                },
                child: const Text(
                  'Simple Interest',
                ),
              ),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    // .pushreplacement -> there won't be back button
                    context,
                    MaterialPageRoute(builder: (context) => const AreaCircle()),
                  );
                },
                child: const Text(
                  'Area of circle',
                ),
              ),
            ),
          ])),
    );
  }
}
