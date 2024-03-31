import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
          // child: Icon(
          //   Icons.star,
          //   color: Color.fromARGB(255, 156, 23, 189),
          // ),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MyApp());
}
