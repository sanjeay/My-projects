import 'package:flutter/material.dart';
import 'package:project1/pass%20data%20between%20pages/List.dart';

import '../learning/Push named.dart';
import '2nd page.dart';

void main() {
  runApp(MaterialApp(
    home: data(),
    routes: {'second': (context) => secondss(), 'first': (context) => data()},
  ));
}

class data extends StatefulWidget {
  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("1st screen"),
      ),
      body: Column(
        children: [

          ListView(
              children: dummyproducts
                  .map((product) => TextButton(
                      onPressed: () => gotonextpage(context, product["id"]),
                      child: Text(product["name"])))
                  .toList()),
        ],
      ),
    );
  }

  void gotonextpage(BuildContext context, product) {
    Navigator.of(context).pushNamed('second', arguments: product);
  }
}
