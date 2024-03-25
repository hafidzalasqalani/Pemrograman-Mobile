import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, super.key});

  final int count;

  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, super.key});

  final VoidCallback onPressed;

  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Increment'));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        const SizedBox(
          width: 16,
        ),
        CounterDisplay(count: _counter)
      ],
    );
  }
}

void main(List<String> args) {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: const Center(
        child: Counter(),
      ),
    )),
  );
}
