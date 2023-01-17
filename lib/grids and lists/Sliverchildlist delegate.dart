

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: damn(),));
}
class damn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        color: Colors.red,
        child:ListView.custom(childrenDelegate: SliverChildListDelegate([
          const Card(
            color: Colors.green,
          ),const Card(
            color: Colors.black,
          ),const Card(
            color: Colors.blue,
          )
        ])),
      ),
    );
  }

}