import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: drww(),));
}
class drww extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset("name"),
            )
          ],
        ),
      ),
    );
  }

}