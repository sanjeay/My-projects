import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Expan(),
  ));
}

class Expan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Center(
              child: Text("Experience",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF301934))))),
      body: SingleChildScrollView(
        child: Container(
          width: 1000,
          height: 1000,
          color: Colors.blue,
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Wrap(
                  children: [
                    Lottie.network(
                        "https://assets6.lottiefiles.com/private_files/lf30_muhbrucd.json",
                        height: 50,
                        width: 1000,
                        fit: BoxFit.cover),
                    ExpansionTileCard(
                      elevation: 0,
                      expandedColor: Colors.transparent,
                      baseColor: Colors.transparent,
                      title: const Text(
                        "Flutter Internship",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "6 months +",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      children: [
                        Column(
                          children: const [
                            Text("Institute: Luminar Technolab",
                                style: TextStyle(color: Colors.white)),
                            Text("fee : 35000",
                                style: TextStyle(color: Colors.white)),
                            Text("Location : Kakkanad",
                                style: TextStyle(color: Colors.white)),
                            Text("Daily class duration : 2 hours",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Wrap(
                  children: [
                    Lottie.network(
                        "https://assets4.lottiefiles.com/packages/lf20_f24znioj.json",
                        height: 50,
                        width: 1000,
                        fit: BoxFit.cover),
                    ExpansionTileCard(
                      elevation: 0,
                      expandedColor: Colors.transparent,
                      baseColor: Colors.transparent,
                      title: const Text(
                        "Android Training",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "2 months ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      children: [
                        Column(
                          children: const [
                            Text("Institute: Luminar Technolab",
                                style: TextStyle(color: Colors.white)),
                            Text("fee : 20000",
                                style: TextStyle(color: Colors.white)),
                            Text("Location : Kakkanad",
                                style: TextStyle(color: Colors.white)),
                            Text("Daily class duration : 2 hours",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Wrap(
                  children: [
                    Lottie.network(
                        "https://assets7.lottiefiles.com/packages/lf20_jtgztoga.json",
                        height: 50,
                        width: 1000,
                        fit: BoxFit.cover),
                    ExpansionTileCard(
                      elevation: 0,
                      expandedColor: Colors.transparent,
                      baseColor: Colors.transparent,
                      title: const Text(
                        "Java Training",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "2 months",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      children: [
                        Column(
                          children: const [
                            Text("Institute: Luminar Technolab",
                                style: TextStyle(color: Colors.white)),
                            Text("fee : 45000",
                                style: TextStyle(color: Colors.white)),
                            Text("Location : Kakkanad",
                                style: TextStyle(color: Colors.white)),
                            Text("Daily class duration : 2 hours",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}