// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }



// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   double num1 = 0;
//   double num2 = 0;
//   String operand = "";
//   String output = "0";


//   void buttonPressed(String buttonText) {
//     if (buttonText == "C") {
//       num1 = 0;
//       num2 = 0;
//       operand = "";
//       output = "0";
//     } else if (buttonText == "=") {
//       switch (operand) {
//         case "+":
//           output = (num1 + num2).toString();
//           break;
//         case "-":
//           output = (num1 - num2).toString();
//           break;
//         case "*":
//           output = (num1 * num2).toString();
//           break;
//         case "/":
//           output = (num1 / num2).toString();
//           break;
//         default:
//           output = "0";
//       }
//     } else if (buttonText == "%" ||
//         buttonText == "+" ||
//         buttonText == "-" ||
//         buttonText == "*" ||
//         buttonText == "/") {
//       operand = buttonText;
//       num1 = double.parse(output);
//       output = "0";
//     } else {
//       output = output + buttonText;
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Calculator App'),
//         ),
//         // body: Container(
//         //   child: Calculator(),
//         // ),

  
//     return Container(
//       child: Column(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(10.0),
//             alignment: Alignment.bottomRight,
//             child: Text(
//               output,
//               style: TextStyle(fontSize: 24.0),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => buttonPressed("."),
//                 child: Text("."),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("%"),
//                 child: Text("%"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("C"),
//                 child: Text("C"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("/"),
//                 child: Text("/"),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => buttonPressed("7"),
//                 child: Text("7"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("8"),
//                 child: Text("8"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("9"),
//                 child: Text("9"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("*"),
//                 child: Text("*"),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => buttonPressed("4"),
//                 child: Text("4"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("5"),
//                 child: Text("5"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("6"),
//                 child: Text("6"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("-"),
//                 child: Text("-"),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => buttonPressed("1"),
//                 child: Text("1"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("2"),
//                 child: Text("2"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("3"),
//                 child: Text("3"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("+"),
//                 child: Text("+"),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => buttonPressed("0"),
//                 child: Text("0"),
//               ),
//               ElevatedButton(
//                 onPressed: () => buttonPressed("="),
//                 child: Text("="),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//   );

// }
