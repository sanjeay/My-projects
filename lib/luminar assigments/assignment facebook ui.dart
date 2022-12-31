import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: facebook(),
  ));
}

class facebook extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            buildcoverimage(),
            Positioned(top: top, child: Container(
                decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.white),borderRadius: BorderRadius.circular(100)),
                child: builprofileimage())),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 20),
              child: Row(
                children: [
                  Positioned(
                    child: Icoon(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250, top: 270),
              child: Positioned(child: Icooon()),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            "Chithrangadhakp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "journalist/model",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }

  Widget Icooon() => Container(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.red,
            child: Icon(
              Icons.add,
              size: 22.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
        ),
      );

  Widget Icoon() => Container(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.red,
            child: Icon(
              Icons.message,
              size: 22.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
        ),
      );

  Widget buildcoverimage() => Container(

        child: Image.asset(
          "assets/images/russia.webp",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget builprofileimage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage("assets/images/chithra.daz.png"),
      );
}
