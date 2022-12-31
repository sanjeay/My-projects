import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridwithextent(),
  ));
}

class gridwithextent extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        children: List.generate(number.length, (index) {
          return Card(
            child: Text(number[index]),
          );
        }),
      ),
    );
  }
}
