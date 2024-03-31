import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aligning Widgets',
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Image.asset('images/PC.jpeg')),
          Expanded(flex: 3, child: Image.asset('images/OIP.jpeg')),
          Expanded(child: Image.asset('images/R.jpeg'))
        ],
      )),
    );
  }
}

void main(List<String> args) {
  runApp(const MyApp());
}
