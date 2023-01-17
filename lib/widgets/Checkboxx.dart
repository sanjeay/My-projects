import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ck(),));
}
class ck extends StatefulWidget{
  @override
  State<ck> createState() => _ckState();
}

class _ckState extends State<ck> {
  bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: ischeck, onChanged: (val){
              setState(() {
                ischeck =val;
              });
            })
          ],
        ),
      ),
    );
  }
}