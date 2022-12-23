import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: daz()));
}
class daz extends StatelessWidget{

  var name =['sanjay','arshi','chithra','hari','pepe'];
  var number =['2083883','737377321','89383822','78373722','87373721','73787320'];
  var colors =[500,400,300,200,100];
  var image=["assets/images/chithra.daz.png","assets/images/arshi.png","assets/images/chithra.daz.png","assets/images/arshi.png","assets/images/arshi.png"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("contacts"),),
      body: ListView.builder(
        itemCount: name.length,
          itemBuilder: (BuildContext, index){
        return Card(
          color: Colors.green[colors[index]],

          child: ListTile(
            title: Text(name[index]),
            subtitle: (Text(number[index])),
            leading:CircleAvatar(child:Image(image: AssetImage(image[index]),)) ,
            trailing: Wrap(
              children: const [
                Icon(Icons.phone),
                SizedBox(width: 20),
                Icon((Icons.message))
              ],
            ),



          ),
        );
      }),
    );
  }

}