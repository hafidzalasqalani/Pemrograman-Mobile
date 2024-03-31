import 'package:flutter/material.dart';

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      const Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Robot',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      )
    ],
  ),
);

const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Robot',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              const Text('Prep:'),
              const Text('25 min'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              const Text('Cook:'),
              const Text('1 hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              const Text('Feeds:'),
              const Text('4-6'),
            ],
          ),
        ],
      ),
    ));

final leftColumn = Container(
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [ratings, iconList],
  ),
);

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 440,
                    child: leftColumn,
                  ),
                  Image.asset('images/OIP.jpeg'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
