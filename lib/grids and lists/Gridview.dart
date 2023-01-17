import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridw(),
  ));
}

class gridw extends StatelessWidget {
  var name = [
    'sanjay',
    'arshi',
    'chithra',
    'hari',
    'pepe',
    'sanjay',
    'arshi',
    'chithra',
    'hari',
    'pepe',
    'sanjay',
    'arshi',
    'chithra',
    'hari',
    'pepe'
  ];
  var number = [
    '2083883',
    '737377321',
    '89383822',
    '78373722',
    '87373721',
    '73787320',
    '2083883',
    '737377321',
    '89383822',
    '78373722',
    '87373721',
    '73787320',
    '2083883',
    '737377321',
    '89383822',
    '78373722',
    '87373721',
    '73787320'
  ];
  var colors = [500, 400, 300, 200, 100];
  var image = [
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 100),
        children: [
          Image.asset(
            "assets/images/chithra.daz.png",
          ),
          Image.asset(
            "assets/images/chithra.daz.png",
          ),
          Image.asset(
            "assets/images/chithra.daz.png",
          ),
          Image.asset(
            "assets/images/chithra.daz.png",
          ),
          Image.asset(
            "assets/images/chithra.daz.png",
          )
        ],
      ),
    );
  }
}
