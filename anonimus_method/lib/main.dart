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
  String cek = "belum ditekan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("anonimus method"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.red])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(cek),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cek = "Naik";
                      });
                    },
                    child: const Text("naik dulu")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cek = "Turun";
                      });
                    },
                    child: const Text("turun dulu"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
