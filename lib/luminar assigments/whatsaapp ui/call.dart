import 'package:flutter/material.dart';



  class call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [

          SizedBox(height: 10,),
          ListTile(
            title: Text("Recent",style: TextStyle(fontSize: 15),),
          ),SizedBox(height: 8,),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/arshi.png"),),
            title: Text("Arshi"),
            trailing: Icon(Icons.call,color: Colors.green,),
          )
        ],
      ),
    );
  }
}
