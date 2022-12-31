import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: builder(),
  ));
}

class builder extends StatelessWidget {
  var name = ['sanjay', 'arshi', 'chithra', 'hari', 'pepe'];
  var number = [
    '2083883',
    '737377321',
    '89383822',
    '78373722',
    '87373721',
    '73787320'
  ];
  var colors = [500, 400, 300, 200, 100];
  var image = [
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/chithra.daz.png",
    "assets/images/arshi.png",
    "assets/images/arshi.png"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (BuildContext, index) {
              return Card(
                color: Colors.cyan,
                child: Image.asset(image[index]),
              );
            }));
  }
}


 var images = [
    "assets/images/switzerland.jpg", "assets/images/russia.webp",
     "assets/images/paris.jpg",
     "assets/images/japan.jpg",
     "assets/images/india.jpg", ];

