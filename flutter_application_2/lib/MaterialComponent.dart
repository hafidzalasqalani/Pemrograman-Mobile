import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Flutter', home: TutorialHome()));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const IconButton(
                onPressed: null,
                icon: Icon(Icons.menu),
                tooltip: 'Navigation menu'),
            title: const Text('Example title'),
            actions: const [
              IconButton(
                  onPressed: null, icon: Icon(Icons.search), tooltip: 'Search')
            ]),
        body: const Center(child: Text('Hello, wold!')),
        floatingActionButton: const FloatingActionButton(
            onPressed: null, tooltip: 'Add', child: Icon(Icons.add)));
  }
}
