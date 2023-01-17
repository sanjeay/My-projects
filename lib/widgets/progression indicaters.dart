import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: prgsn(),));
}
class prgsn extends StatefulWidget{
  @override
  State<prgsn> createState() => _prgsnState();
}
double _initaial=0.01;
class _prgsnState extends State<prgsn> {
  void update(){
    Timer.periodic(Duration(milliseconds: 100),(timer){
      setState(() {
   _initaial =_initaial+0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    update();
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              color: Colors.black,
              valueColor: AlwaysStoppedAnimation(Colors.red),
              value: _initaial,
            )
          ],
        ),
      ),
    );
  }
}