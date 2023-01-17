import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: expnsntile(),));
}
class expnsntile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("expansion tile"),),
      body: ExpansionTile(
        title: Text("Contacts"),
      children: [
        ListTile(
          leading: Icon(Icons.contact_page),
          title: Text("chithra"),
          subtitle: Text("98475633839"),
        ),ListTile(
          leading: Icon(Icons.contact_page),
          title: Text("chithra"),
          subtitle: Text("98475633839"),
        ),ListTile(
          leading: Icon(Icons.contact_page),
          title: Text("chithra"),
          subtitle: Text("98475633839"),
        )
      ],),
    );
  }

}