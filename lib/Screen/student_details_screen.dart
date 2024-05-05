// import 'package:first_app/common/list_tile_common.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/listtile_common.dart';
import 'package:flutter_application_1/model/student_model.dart';

class StudentsDetailsScreen extends StatefulWidget {
  const StudentsDetailsScreen({super.key});

  @override
  State<StudentsDetailsScreen> createState() => _StudentsDetailsScreenState();
}

class _StudentsDetailsScreenState extends State<StudentsDetailsScreen> {
  List<StudentModel> studentsList = [];
  String? firstName;
  String? lastName;
  String? address;

  final _formKey = GlobalKey<FormState>();
  StudentModel? student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        firstName = value;
                      },
                      decoration: const InputDecoration(
                          labelText: "Enter your first name",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        lastName = value;
                      },
                      decoration: const InputDecoration(
                          labelText: "Enter your last name",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        address = value;
                      },
                      decoration: const InputDecoration(
                          labelText: "Enter your address",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            student = StudentModel(
                                firstName: firstName,
                                lastName: lastName,
                                address: address);
                            studentsList.add(student!);
                          });
                        },
                        child: const Text("Save Details")),
                    // Container(
                    //   child: Column(
                    //     children: [
                    //       for (int i = 0; i < studentsList.length; i++)
                    //         CommonListTile(
                    //             index: i,
                    //             imageName: "person.jpeg",
                    //             firstName: studentsList[i].firstName!,
                    //             lastName: studentsList[i].lastName!,
                    //             address: studentsList[i].address!)
                    //     ],
                    //   ),
                    // ),
                    Column(
                      children: [
                        for (int i = 0; i < studentsList.length; i++)
                          CommonListTile(
                            index: i,
                            imageName: "person.jpeg",
                            firstName: studentsList[i].firstName!,
                            lastName: studentsList[i].lastName!,
                            address: studentsList[i].address!,
                            onDelete: (index) {
                              setState(() {
                                studentsList.removeAt(index);
                              });
                            },
                          )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
