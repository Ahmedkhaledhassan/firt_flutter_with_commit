import 'package:first_task/learnflutterpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext) {
              return const Learnflutterpage();
            }));
          },
          child: const Text('learn flutter')),
    );
  }
}
