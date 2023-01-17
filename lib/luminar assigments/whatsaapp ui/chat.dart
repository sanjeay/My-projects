import 'package:flutter/material.dart';

class whst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/arshi.png")),
                title: Text("Arshi"),
                subtitle: Text("dont do"),
                trailing: Text("12.45"),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/chithra.daz.png"),
              ),
              title: Text("Ckp"),
              subtitle: Text("dont do"),
              trailing: Text("12.45"),
            ),
            SizedBox(height: 10),
            ListTile(
              trailing: Text("13.55"),
              title: Text("modiji"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/india.jpg"),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/paris.jpg"),
              ),
              title: Text("shajahan"),
              subtitle: Text("dont do"),
              trailing: Text("12.45"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/me.jpg"),
              ),
              title: Text("abhi"),
              subtitle: Text("dont do"),
              trailing: Text("21.45"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/croatia.jpg"),
              ),
              title: Text("kunjan"),
              subtitle: Text("dont do"),
              trailing: Text("22.78"),
            )
          ],
        ),
      ),
    );
  }
}
