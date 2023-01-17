import 'package:flutter/material.dart';

import 'contact.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: mytab(),
  ));
}

class mytab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("whatsapp"),
          actions: [Icon(Icons.search)],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(text: "chats"),
              Tab(text: "status"),
              Tab(text: "call")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("community"),

            ),


            Center(
              child: Text("status"),
            ),
            Contacts()
          ],
        ),
      ),
    );
  }
}
