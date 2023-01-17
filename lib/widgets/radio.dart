import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Rdo(),));
}

class Rdo extends StatefulWidget {
  @override
  State<Rdo> createState() => _RdoState();
}

class _RdoState extends State<Rdo> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Text("male"),
            leading: Radio(value: "male", groupValue: gender, onChanged: (String? value) {
              setState(() {
                gender=value;
              });
            },),
          ),ListTile(
            title: Text("female"),
            leading: Radio(value: "female", groupValue: gender, onChanged: (String? value) {
              setState(() {
                gender=value;
              });
            },),
          )
        ],
      ),
    );
  }
}