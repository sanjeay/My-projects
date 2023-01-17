import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: custo(),));
}
class custo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), childrenDelegate: SliverChildListDelegate([
        Card(
          color: Colors.red,
          child: Text("unni"),
        ), Card(
        color: Colors.red,
        child: Text("unni"),
        ),
        Card(
        color: Colors.red,
        child: Text("unni"),),
        Card(
        color: Colors.red,
        child: Text("unni"),)])),
    );
  }

}