// import 'package:flutter/material.dart';

// class ContainerScreen extends StatelessWidget {
//   const ContainerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[50],
//       body: Center(
//         child: SafeArea(
//           child: Container(
//             width: 200,
//             height: 200,
//             alignment: Alignment.center, //text in the center of container

//             child: const Text('I am super man'),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.amberAccent,
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2,
//                 )),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight, //text in the center of container

          child: const Text('I am super man'),
          // decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.amberAccent,
          //     border: Border.all(
          //       color: Colors.black,
          //       width: 2,
          //     )),
        ),
      ),
    );
  }
}
