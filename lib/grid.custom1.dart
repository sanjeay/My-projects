import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridcustom(),
  ));
}

class Gridcustom extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: GridView.custom(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {
            return Card(
              child: Text(name[index]),
            );
          }),
        ));
  }
}
