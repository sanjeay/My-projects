import 'package:flutter/material.dart';

import '../luminar assigments/assignment facebook ui.dart';

void main() {
  runApp(const MaterialApp(
    home: Navigationdrawer(),
  ));
}

class Navigationdrawer extends StatefulWidget {
  const Navigationdrawer({super.key});

  @override
  State<Navigationdrawer> createState() => _NavigationdrawerState();
}

class _NavigationdrawerState extends State<Navigationdrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/images/arshi.png"),
                        fit: BoxFit.cover)),
                accountName: const Text("sanjay"),
                accountEmail: const Text("jebascene1@gmail.com"),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/croatia.jpg"),
                  )
                ],
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("fucked up");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const facebook()));
                  },
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/chithra.daz.png"),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("account details"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
              ),
              const ListTile(
                leading: Icon(Icons.message),
                title: Text("text us"),
              ),
              const ListTile(
                leading: Icon(Icons.call),
                title: Text("call us"),
              ),
              const ListTile(
                leading: Icon(Icons.feedback),
                title: Text("know us"),
              ),
              const ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("rate us"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
