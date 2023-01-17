import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/SCROLLABLE%20VIEW%20FOR%20UINEW.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ui(),
  ));
}

class ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/arshi.png"),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 40,
                width: 189,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/ixons.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "SANJAY",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 20),
              child: Text("@webrror"),
            ),
            Text(
              "MOBILE APP DEVOLOPER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                color: Colors.white,
                height: 400,
                width: double.infinity,
                child: scr(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
