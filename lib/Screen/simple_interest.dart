import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/simple_interest_model.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
// Delcare variables
  double? principal;
  double? rate;
  double? time;
  double si = 0;

  final mykey = GlobalKey<FormState>();

  SimpleInterestModel? simpleInterestModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Simple Intereest"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey,
        child: Column(
          children: [
            // TextFormField()
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter p';
                }
              },
              onChanged: (value) {
                principal = double.parse(value);
              },
              keyboardType: TextInputType.number,
              // decoration: const InputDecoration(
              //   border: OutlineInputBorder(),
              //   labelText: 'Enter principal',
              // ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  )),
            ),
            const SizedBox(height: 8),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter T';
                }
              },
              onChanged: (value) {
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time',
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter R';
                }
              },
              onChanged: (value) {
                rate = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter rate',
              ),
            ),

            const SizedBox(height: 8),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (mykey.currentState!.validate()) {}
                  setState(() {
                    simpleInterestModel = SimpleInterestModel(
                        principal: principal!, time: time!, rate: rate!);
                    si = simpleInterestModel!.SimpleInterest();
                  });
                },
                child: const Text(
                  'Caculate SI',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            // Text(
            //   'SI is : $si',
            //   style: const TextStyle(
            //     fontSize: 30,
            //   ),
            // ),
            // RichText(
            //     text: TextSpan(
            //         text: 'Simple Intereest',
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 30,
            //         ),
            //         children: <TextSpan>[
            //       TextSpan(
            //         text: ' is',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           color: Colors.amber,
            //         ),
            //       ),
            //       TextSpan(
            //         text: ' $si',
            //       ),
            //     ])),
            ////////
            RichText(
              text: const TextSpan(
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 40,
                      ),
                    ),
                    TextSpan(text: "y name is Chewan Rai")
                  ]),
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
