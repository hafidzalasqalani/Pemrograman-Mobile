import 'package:flutter/material.dart';

Widget _buildList() {
  return ListView(
    children: [_tile('wkwkw', 'kikik', Icons.theaters)],
  );
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: _buildList(),
      )),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
