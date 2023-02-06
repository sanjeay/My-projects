import 'package:flutter/material.dart';

import 'Youtube.dart';

void main(){
  runApp(MaterialApp(home: Utube_Page(),debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.brown),));
}
class Utube_Page extends StatefulWidget{

  @override
  State<Utube_Page> createState() => _Utube_PageState();
}

class _Utube_PageState extends State<Utube_Page> {
  int selectindex=0;

  List body= <Widget>[
    utube(),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Shorts"),),color: Colors.brown,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Add"),),color: Colors.brown,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Subscription"),),color: Colors.brown,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Library"),),color: Colors.brown,),
  ];
  void onitemtapped(int index){
    setState(() {
      selectindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(title:Text("BottomBar"),
      // ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.black87,
          selectedItemColor: Colors.black,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.short_text_sharp),
              label: "Shorts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined),
              label: "Add New",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: "Subscription",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: "Library",
            ),
          ],
          currentIndex: selectindex,
          onTap: onitemtapped,
        ),

      ),
      body: Center(
        child: body.elementAt(selectindex),
        // child: Card(
        //   child: Padding(
        //     padding: const EdgeInsets.all(50.0),
        //     child: Text("Welcome"),
        //   ),),),
      ),);
  }
}