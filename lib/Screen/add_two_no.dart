import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/add_two_no_model.dart';

class AddTwoNo extends StatefulWidget {
  const AddTwoNo({super.key});

  @override
  State<AddTwoNo> createState() => _AddTwoNoState();
}

class _AddTwoNoState extends State<AddTwoNo> {
// Delcare variables
//creat global key for form
  final mykey = GlobalKey<FormState>(); ////
  int? first;
  int? second;
  int sumresult = 0;
  int subresult = 0;

  AddTwoNoModel? addtwonoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey,
        child: Column(
          children: [
            TextFormField(
              ///
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter no';
                }
                return null;
              },
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First No',
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter no';
                }
                return null;
              },
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
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
                    addtwonoModel =
                        AddTwoNoModel(first: first!, second: second!);
                    sumresult = addtwonoModel!.Add();
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            Text(
              'Sum is : $sumresult',
              style: const TextStyle(
                fontSize: 30,
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
                    addtwonoModel =
                        AddTwoNoModel(first: first!, second: second!);
                    subresult = addtwonoModel!.Sub();
                  });
                },
                child: const Text(
                  'Sub',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            Text(
              'Subtraction is : $subresult',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
