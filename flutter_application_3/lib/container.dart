import 'package:flutter/material.dart';

Widget _buildImageColum() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: [
        _buildImageRow(1),
        _buildImageRow(3),
      ],
    ),
  );
}

Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.all(4),
      child: Image.asset('images/$imageIndex.jpeg'),
    ));

Widget _buildImageRow(int imageIndex) => Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1)
      ],
    );

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: _buildImageColum(),
      )),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
