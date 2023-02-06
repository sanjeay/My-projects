import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trsm2(),
  ));
}

class Trsm2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(children: [
      Container(
        height: 200,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage("assets/images/airplane-flight.png"),fit: BoxFit.contain)),
      ),
          Padding(
            padding: const EdgeInsets.only(left: 130,right: 130,top: 90),
            child: Container(
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: ElevatedButton(onPressed: () {  }, child: Text("Login"),),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(child: Text("- or -",style: TextStyle(color: Colors.grey),)),
          SizedBox(height: 30,),
           Padding(
            padding: EdgeInsets.only(left: 90,right: 90),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              tileColor: Colors.blue.shade900,
              title: Text("Login with Facebook",style: TextStyle(color: Colors.white),),
              trailing: Icon(Bootstrap.facebook,color: Colors.white,),
            ),
          ), Padding(
            padding: EdgeInsets.only(left: 90,right: 90,top: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              tileColor: Colors.blue,
              title: Text("Login with Facebook",style: TextStyle(color: Colors.white),),
              trailing: Icon(Bootstrap.twitter,color: Colors.white,),
            ),
          ) ,Padding(
            padding: EdgeInsets.only(left: 90,right: 90,top: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              tileColor: Colors.red,
              title: Text("Login with Facebook",style: TextStyle(color: Colors.white),),
              trailing: Icon(Bootstrap.google,color: Colors.white,),
            ),
          )
        ]));
  }
}
