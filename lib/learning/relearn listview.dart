import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Lstwthblder(),));
}

class Lstwthblder extends StatelessWidget {
  var num = ['1', '2', '3', '4', '5', '6', '7', '8'];
  var name = [
    "sanjay",
    "sanjay",
    "sanjay",
    "sanjay",
    "sanjay",
    "sanjay",
    "sanjay"
  ];
  var colors = [700, 600, 500, 400, 300, 200, 100];
  var icon = [
    Icons.account_circle,
    Icons.add,
    Icons.import_contacts_sharp,
    Icons.abc_outlined,
    Icons.account_circle,
    Icons.add,
    Icons.import_contacts_sharp
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("listbuilder")),
        body:ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context,index){
          return Card(
            color: Colors.pink[colors[index]],
            child: ListTile(
              leading:Icon(icon[index]) ,
              title: Text(name[index]),
              subtitle: Text(num[index]),

            ),
          );
        })


    );
  }
}