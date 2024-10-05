import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "latihan countener",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Countener"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: const Color.fromARGB(255, 8, 22, 171),
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          padding: const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Color.fromARGB(255, 11, 141, 222),
                  Color.fromARGB(255, 28, 29, 29)
                ])),
            child: const Center(
              child: Text(
                "ini text ya guys btw ini di dalam \ncountainer",
                style: TextStyle(
                    color: Color.fromARGB(255, 9, 203, 224),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
