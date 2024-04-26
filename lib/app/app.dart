// import 'package:flutter_application_1/Screen/add_two_no.dart';
import 'package:flutter_application_1/Screen/calculator_screen.dart';
import 'package:flutter_application_1/Screen/columns_screen.dart';
import 'package:flutter_application_1/Screen/container_screen.dart';
import 'package:flutter_application_1/Screen/dashboard_screen.dart';
import 'package:flutter_application_1/Screen/flexible_expanded_screen.dart';
import 'package:flutter_application_1/Screen/simple_interest.dart';
// import 'package:flutter_application_1/screen/hello_world_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Screen/arithmetic_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlexibleExpandedScreen(),
    );
  }
}
