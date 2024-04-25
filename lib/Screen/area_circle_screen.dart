import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/area_circle_model.dart';

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {
  final mykey = GlobalKey<FormState>();

  double? radius;
  double area = 0;

  AreaCircleModel? areaCircleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: mykey,
            child: Column(children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Radius';
                  }
                },
                onChanged: (value) {
                  radius = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Radius of Circle',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {} ////
                    setState(() {
                      areaCircleModel = AreaCircleModel(radius: radius!);
                      area = areaCircleModel!.Area();
                    });
                  },
                  child: const Text(
                    'Calculate Area',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Sum is : $area',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 8),
            ])));
  }
}
