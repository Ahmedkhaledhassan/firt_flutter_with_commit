import 'package:flutter/material.dart';

const int itemcount = 20;

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemcount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('material ${(index + 1)}'),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.select_all_rounded),
            onTap: (){
              debugPrint('material ${(index + 1)}');
            },
          );
        });
  }
}
