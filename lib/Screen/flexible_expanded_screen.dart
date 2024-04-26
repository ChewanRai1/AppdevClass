import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/common/snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       height: 600,
      //       decoration: const BoxDecoration(
      //         color: Colors.amber,
      //       ),
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 600,
      //       decoration: const BoxDecoration(
      //         color: Colors.green,
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              alignment: Alignment.center,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    // const SnackBar(
                    //   backgroundColor: Colors.green,
                    //   content: Text('Button One is pressed'),
                    //   duration: Duration(seconds: 3),
                    //   behavior: SnackBarBehavior.floating,
                    // ),
                    // );
                    showMySnackBar(
                        message: "Buttonn One is pressed now",
                        context: context,
                        color: Colors.green);
                  },
                  child: const Text(
                    '1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  )),
            ),
          ),
          Expanded(
            // fit: FlexFit.loose, //will fit in available screen,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('Button Two is pressed'),
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
