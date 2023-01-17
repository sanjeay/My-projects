import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: rdio(),));
}
class rdio extends StatefulWidget{
  @override
  State<rdio> createState() => _rdioState();
}

class _rdioState extends State<rdio> {
  @override
  Widget build(BuildContext context) {
    String?gender;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Text("male"),
            leading: Radio(value: "male", groupValue: gender, onChanged: (String? value) {
              setState(() {
                gender =value;
              });
            }, ),
          ), ListTile(
            title: Text("female"),
            leading: Radio(value: "female", groupValue: gender, onChanged: (String? value) {
              setState(() {
                gender =value;
              });
            }, ),
          ), ListTile(
            title: Text("others"),
            leading: Radio(value: "others", groupValue: gender, onChanged: (String? value) {
              setState(() {
                gender =value;
              });
            }, ),
          )
        ],
      ),
    );
  }
}