import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class sts extends StatelessWidget {
  const sts({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/chithra.daz.png")),
            title: Text("My status"),
            subtitle: Text("Tap to add status"),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "viewed updates",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/arshi.png"),
            ),
            title: Text("Arshi"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "https://github.com/sanjeay/project1/blob/9fe9ac51f7fb52867702c3443b073f02112f056b/assets/images/japan.jpg"),
            ),title: Text("modiji"),
          )
        ],
      ),
    );
  }
}
