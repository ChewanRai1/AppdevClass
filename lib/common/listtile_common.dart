import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/output_screen.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  const CommonListTile({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.abc_outlined),
      title: Text('Title $index'),
      subtitle: const Text('Subtitle'),
      trailing: const Icon(Icons.delete),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OutputScreen(
                fullname: 'HI hehe',
              ),
            ));
      },
    );
  }
}
