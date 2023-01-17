import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview(),));
}
class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ), childrenDelegate:SliverChildBuilderDelegate(
            childCount: 10,
            (context,index){
        return Container(
          child: ListView(

            children: [
              Text("hello sanjay"),
              Icon(Icons.abc_outlined,color: Colors.white)
            ],
          ),
        );
    },
    )));
  }

}