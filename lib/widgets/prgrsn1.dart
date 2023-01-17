import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: pp(),));
}
class pp extends StatefulWidget{
  @override
  State<pp> createState() => _ppState();
}
double _initiated =0.1;
class _ppState extends State<pp> {
  void update(){
    Timer.periodic(Duration(milliseconds: 100),(timer){
      setState(() {
        _initiated =_initiated+0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    update();
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              color: Colors.red,
              valueColor: AlwaysStoppedAnimation(Colors.black),
              value: _initiated,
            )
          ],
        ),
      ),
    );
  }
}