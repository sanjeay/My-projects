import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listtile(),));
}

class Listtile extends StatelessWidget {
  var title =['sanjay','arshitha','chithra','hari','nived','pepe','dhrona'];
  var subtitle =['age20','age20','age20','age20','age20','age20','age20'];
  var colors=[100,200,300,400,500,600,700];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: title.length,
          itemBuilder: (BuildContext,index){
        return Container(

          height: 50,
          color: Colors.cyan[colors[index]],
          child: ListTile(
            title: Text(title[index]),
            subtitle: Text(subtitle[index]),
          ),
        );
      }),
    );
  }
}