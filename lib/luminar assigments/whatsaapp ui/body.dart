import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/whatsaapp%20ui/call.dart';
import 'package:project1/luminar%20assigments/whatsaapp%20ui/chat.dart';
import 'package:project1/luminar%20assigments/whatsaapp%20ui/status.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green.shade800,
          actions: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                SizedBox(width: 8),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.more_vert_rounded),
                )
              ],
            )
          ],
          title: Text("Whatsapp", textAlign: TextAlign.left),
          bottom: TabBar(
            tabs: [
              Icon(
                Icons.people,
              ),
              Text("Chats"),
              Text("Status"),
              Text("Call")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("community"),
            ),
            whst(),
           sts(),
            call()

          ],
        ),
      ),
    );
  }
}
