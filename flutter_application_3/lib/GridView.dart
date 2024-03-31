import 'package:flutter/material.dart';

Widget _builGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(20),
    );

List<Container> _buildGridTileList(int count) => List.generate(
    count,
    (index) => Container(
          child: Image.asset('images/1.jpeg'),
        ));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: _builGrid(),
      )),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
