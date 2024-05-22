import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Practice"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 100,
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onDoubleTap: () {
                print('container clickedd');
              },
              child: Container(
                height: screenSize.height * 0.5, // 40% of screen height
                width: screenSize.width,
                // height: 400,
                // width: 400,
                color: Colors.amber,
                child: const Text('1st container'),
              ),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Text('2nd container'),
              ),
            ),
            Positioned(
              bottom: -20,
              // right: 400 / 2 - 50,
              right: screenSize.width * 0.4 / 2 - 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue[100],
                child: const Text('3rd container'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
