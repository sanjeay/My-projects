import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/contactbook%20b=withbuilder.dart';

void main() {
  runApp(MaterialApp(
    home: sepr(),
  ));
}

class sepr extends StatelessWidget {var num = ['1', '2', '3', '4', '5', '6', '7', '8'];
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
      appBar: AppBar(
         title:Text("listviewwithseperater"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.pink[colors[index]],
              child: ListTile(
                leading:Icon(icon[index]) ,
                title: Text(name[index]),
                subtitle: Text(num[index]),

              ),
            );
          },
          separatorBuilder: (context,index){
            return Divider(
              thickness: 3,
              color: Colors.red,
            );
          },
          itemCount: num.length),
    );
  }
}
