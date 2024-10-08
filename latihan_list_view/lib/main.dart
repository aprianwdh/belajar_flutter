import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> list = [];
  int counter = 0;
  // _MyAppState() {
  //   for (int i = 1; i <= 20; i++) {
  //     list.add(Text(
  //       "ke-" + i.toString(),
  //       style: TextStyle(fontSize: 40),
  //     ));
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("list view"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                        list.add(Text("ke-$counter"));
                      });
                    },
                    child: const Text("tambah")),
                ElevatedButton(
                    onPressed: counter == 0
                        ? null
                        : () {
                            setState(() {
                              list.removeLast();
                              counter--;
                            });
                          },
                    child: const Text("kurang")),
              ],
            ),
            Column(children: [...list]),
          ],
        ),
      ),
    );
  }
}
