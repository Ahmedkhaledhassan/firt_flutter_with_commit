import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Learnflutterpage extends StatefulWidget {
  const Learnflutterpage({super.key});

  @override
  State<Learnflutterpage> createState() => _LearnflutterpageState();
}

class _LearnflutterpageState extends State<Learnflutterpage> {
  bool isSwitch = false;
  bool? isScheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://www.birmingham.ac.uk/Images/News/PictureGalleryforwebsite/William-Shakespeare.jpg'),
            const SizedBox(
              height: 6,
            ),
            const Divider(
              color: Colors.black12,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'this is shakespeare',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('button');
                },
                child: const Text('elevated button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('button');
                },
                child: const Text('outline button')),
            TextButton(
                onPressed: () {
                  debugPrint('button');
                },
                child: const Text('text button')),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is the row ');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.perm_device_information_sharp,
                    color: Color.fromARGB(255, 233, 233, 156),
                  ),
                  Text('row widget'),
                  Icon(
                    Icons.perm_device_information_sharp,
                    color: Color.fromARGB(255, 233, 233, 156),
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {});
                  isSwitch = newBool;
                }),
            Image.network(
                'https://tse1.mm.bing.net/th?id=OIP.oVFrimVpo00G4WrK7vkJrgHaGN&pid=Api&P=0')
          ],
        ),
      ),
    );
  }
}
