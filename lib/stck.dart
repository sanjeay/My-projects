import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stackkk(),
  ));
}

class stackkk extends StatelessWidget {
  var images = [
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
    "assets/images/chithra.daz.png",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
          children: List.generate(20, (index) {
            return Container(
              child: Image(image: AssetImage(images[index])),
            );
          })),
    );
  }
}
