import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskRowColumnScreen extends StatelessWidget {
  const TaskRowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Rows and Column'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: double.infinity,
                    child: const Text(
                      'Container 1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: const Text(
                      'Container 2',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: double.infinity,
                    child: const Text(
                      'Container 3',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Container(
                //   child: const Text('Container 1'),
                // ),
                // Container(
                //   alignment: Alignment.center,
                //   height: 70,
                //   decoration: const BoxDecoration(
                //     color: Colors.red,
                //   ),
                //   child: const Text('Container 2'),
                // ),
                // Container(
                //   child: const Text('Container 3'),
                // ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 41, 119, 255),
              ),
              child: const Text(
                'Container 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: const Text(
                'Container 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Flexible(
          //   fit: FlexFit.loose,
          //   child: Container(
          //     alignment: Alignment.center,
          //     height: 200,
          //     width: double.infinity,
          //     decoration: const BoxDecoration(
          //       color: Color.fromARGB(255, 41, 119, 255),
          //     ),
          //     child: const Text(
          //       'Container 3',
          //       style: TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 41, 119, 255),
              ),
              child: const Text(
                'Container 3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}