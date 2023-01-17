import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fb(),
  ));
}

class fb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("profile")),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/long-stay-hotel-accommodation.jpg"),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                  top:200,
                  left: 200,
                  child: Container(
                    clipBehavior:Clip.none,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3,color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/chithra.daz.png"))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
