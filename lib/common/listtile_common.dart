import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/output_screen.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  final String imageName;
  final String firstName;
  final String lastName;
  final String address;
  const CommonListTile({
    required this.index,
    required this.imageName,
    required this.firstName,
    required this.lastName,
    required this.address,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset('assets/images/img_2.jpeg'),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/$imageName'),
      ),
      title: Text('Name : $firstName $lastName'),
      subtitle: Text('$address, Nepal'),
      trailing: const Icon(Icons.delete),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OutputScreen(
                fullname: '$firstName $lastName',
              ),
            ));
      },
    );
  }
}
