import 'package:flutter/material.dart';

class ColumnsScreen extends StatelessWidget {
  const ColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('column'),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //start, center,end,spaceBetween, Spaceevenly,SpaceAround,,, stretch
            // children: [
            // Icon(Icons.star, size: 50),
            // Spacer(),
            // Icon(Icons.star, size: 50),
            // Icon(Icons.star, size: 50),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
              ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
              ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            ],
          ),
        ));
  }
}
