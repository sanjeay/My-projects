import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: daz()));
}

class daz extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(),
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 10),
        children: [
          Image.asset("assets/images/chithra.daz.png"),
          Image.asset("assets/images/arshi.png"),
          Image.asset("assets/images/arshi.png")
        ],

      ),
    );
  }

}