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
  int number = 0;
  void TekanTombol() {
    setState(() {
      number += 1;
    });
  }

  void Resetint() {
    setState(() {
      number *= 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Statefull widget"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 163, 208, 245),
            Color.fromARGB(255, 15, 5, 124)
          ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 12 + number.toDouble()),
                ),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: TekanTombol, child: const Text("tambah")),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: Resetint, child: const Text("Reset")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
