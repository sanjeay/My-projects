import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  List screen =["1",'2','3''4'];
  int index=2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            tapindex=index;
          });
        },
        type:BottomNavigationBarType.fixed ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"home" ),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: "call"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "message")
      ],),
      body: Center(
        child: screen[index],
      ),
    );
  }
}
