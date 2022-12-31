import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: assignment(),));
}
class assignment extends StatelessWidget{
  var images = [
    "assets/images/switzerland.jpg",
    "assets/images/russia.webp",
    "assets/images/paris.jpg",
    "assets/images/japan.jpg",
    "assets/images/india.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 3,mainAxisSpacing: 3), itemBuilder: (BuildContext,index){
        return Stack(
          children: [
            ListView(
              children:[ Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(images[index],height: 450,width: 450),
              ),
            ]),Positioned(
                bottom: 20,
                child: Text("himalaya"))
          ],
        );

      }),
    );
  }

}