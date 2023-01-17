import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: custom(),
  ));
}

class custom extends StatelessWidget {
  var name = ['sanjay', 'arshi', 'chithra', 'hari', 'pepe','sanjay', 'arshi', 'chithra', 'hari', 'pepe','sanjay', 'arshi', 'chithra', 'hari', 'pepe'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: ListView.custom(

          itemExtent: 100,
          childrenDelegate: SliverChildBuilderDelegate(childCount: name.length,
              (BuildContext, index) {
            return Card(
              child: Text(name[index]),
            );
          }),
        ));
  }
}
