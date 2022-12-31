import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: count(),
  ));
}

class count extends StatelessWidget {
  var image = [
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/arshi.png"
  ];
  var color = [
    Colors.white,
    Colors.red,
    Colors.black54,
    Colors.white,
    Colors.red,
    Colors.black54,
    Colors.white,
    Colors.red,
    Colors.black54
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5,
          children: List.generate(image.length, (index) {
            return Card(
              color: (color[index]),
              child: Image.asset(image[index]),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            );
          }),


        ));
  }
}
