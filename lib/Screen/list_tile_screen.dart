import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/listtile_common.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListTile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 100; i++) ...{
                if (i % 2 == 0) ...{
                  CommonListTile(
                    index: i,
                    imageName: "img_1.jpeg",
                    firstName: "a",
                    lastName: "a",
                    address: "a", onDelete: (int ) {  },
                  )
                } else ...{
                  CommonListTile(
                    index: i,
                    imageName: "img_2.jpeg",
                    firstName: "a",
                    lastName: "a",
                    address: "a", onDelete: (int ) {  },
                  ),
                }
              }
            ],
          ),
        ));
  }
}



        // body: Column(children: [
        //   ListTile(
        //     leading: const Icon(Icons.accessible_forward),
        //     title: const Text('Chewan Rai'),
        //     subtitle: const Text('Kiran Rana'),
        //     trailing: const Icon(Icons.delete),
        //     onTap: () {
        //       debugPrint('ListTile tapped');
        //     },
        //   ),
        //   ListTile(
        //     leading: const Icon(Icons.accessible_forward),
        //     title: const Text('Kiran Rana'),
        //     subtitle: const Text('Chewan Rai'),
        //     trailing: const Icon(Icons.delete),
        //     onTap: () {
        //       debugPrint('2nd ListTile tapped');
        //     },
        //   ),
        // ]