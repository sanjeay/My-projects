import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: check(),));
}
class check extends StatefulWidget{
  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool? Check=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: Check, onChanged: (value){
              setState(() {
                Check=value;
              });
            })
          ],
        ),
      ),
    );
  }
}