import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: _increment, child: const Text('Increment')),
        const SizedBox(
          width: 16,
        ),
        Text('Counter: $_counter')
      ],
    );
  }
}

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Statefull Widget"),
      ),
      body: const Center(
        child: counter(),
      ),
    ),
  ));
}
