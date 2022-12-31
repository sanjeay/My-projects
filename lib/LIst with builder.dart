import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listwithbuilder(),));
}
class listwithbuilder extends StatelessWidget{
  var list =['item1','item2','item3','item4','item5','item6','item7'];
  var color =[100,200,300,400,500,600,700];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext,index){
        return Container(
          color: Colors.pink[color[index]],
          height: 40,
          child:
            Center(child:Text(list[index]),)

        );
      }),
    );
  }

}