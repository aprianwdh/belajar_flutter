import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Latihan Font Style",
            style: TextStyle(fontFamily: "PixelifySans"),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            "apalah kau ini",
            style: TextStyle(
                fontFamily: "PixelifySans",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.amber),
          ),
        ),
      ),
    );
  }
}
