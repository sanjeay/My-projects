import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/pass%20data%20between%20pages/2nd%20page.dart';
import 'package:project1/pass%20data%20between%20pages/List.dart';

void main(){
  runApp(MaterialApp(
    routes: {'second':(context)=>secondss()},
    home: Ded(),));
}

class Ded extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children:
          dummyproducts.map((e) => TextButton(onPressed: ()=>gotonxt(context,e['id']),
              child: Text(e["name"]))).toList()

      ),
    );
  }

  gotonxt(BuildContext context, e) {
    Navigator.of(context).pushNamed('second',arguments: e["id"]);
  }
}