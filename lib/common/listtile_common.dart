import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/output_screen.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  final String imageName;
  final String firstName;
  final String lastName;
  final String address;
  final Function(int) onDelete; // Callback function to handle deletion
  const CommonListTile({
    required this.index,
    required this.imageName,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.onDelete,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/$imageName'),
      ),
      title: Text('Name : $firstName $lastName'),
      subtitle: Text('$address, Nepal'),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // Call onDelete callback to handle deletion
          onDelete(index); // Pass the index of the item to delete
        },
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OutputScreen(
              fullname: '$firstName',
            ),
          ),
        );
      },
    );
  }
}
