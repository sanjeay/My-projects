import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridddd(),));
}
class gridddd extends StatelessWidget{
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
      mainAxisExtent: 4), itemBuilder:(context,index){
        return Card(
          color: Colors.green[colors[index]],
          child: ListView(
            children: [
              Icon(Icons.account_circle),

            ],
          )

        );
      } ),
    );
  }

}