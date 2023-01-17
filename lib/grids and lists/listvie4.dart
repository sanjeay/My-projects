import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lis(),
  ));
}

class lis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("petshops"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
        const Card(
          shadowColor: Colors.cyan,
          child: ListTile(
            title: Text("pets store 1"),
            subtitle: Text("pets store 1"),
            leading: Image(
                image: NetworkImage(
                    "https://i.guim.co.uk/img/media/03734ee186eba543fb3d0e35db2a90a14a5d79e3/0_173_5200_3120/master/5200.jpg?width=620&quality=45&dpr=2&s=none")),
            trailing: Icon(Icons.phone),
          ),
        ),
        Card(
          shadowColor: Colors.cyan,
          color: Colors.blue,
          child: ListTile(
            title: Text("pets store 2"),
            subtitle: Text("pets store 1"),
            leading: Image(
              image: NetworkImage(
                  "https://i.guim.co.uk/img/media/03734ee186eba543fb3d0e35db2a90a14a5d79e3/0_173_5200_3120/master/5200.jpg?width=620&quality=45&dpr=2&s=none"),
            ),
            trailing: Icon(Icons.phone),
          ),
        ),
        Card(
          shadowColor: Colors.cyan,
          color: Colors.blue,
          child: ListTile(
            title: Text("pets store 3"),
            subtitle: Text("pets store 1"),
            leading: Image(
              image: NetworkImage(
                  "https://i.guim.co.uk/img/media/03734ee186eba543fb3d0e35db2a90a14a5d79e3/0_173_5200_3120/master/5200.jpg?width=620&quality=45&dpr=2&s=none"),
            ),
            trailing: Icon(Icons.phone),
          ),
        ),
        Card(
          shadowColor: Colors.cyan,
          color: Colors.green,
          child: ListTile(
            title: Text("pets store 4"),
            subtitle: Text("pets store 1"),
            leading: Image(
              image: NetworkImage(
                  "https://i.guim.co.uk/img/media/03734ee186eba543fb3d0e35db2a90a14a5d79e3/0_173_5200_3120/master/5200.jpg?width=620&quality=45&dpr=2&s=none"),
            ),
            trailing: Icon(Icons.phone),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: ListTile(
            title: Text("pets store 5"),
            subtitle: Text("pets store 1"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.guim.co.uk/img/media/03734ee186eba543fb3d0e35db2a90a14a5d79e3/0_173_5200_3120/master/5200.jpg?width=620&quality=45&dpr=2&s=none"),
            ),
            trailing: Icon(Icons.phone),
          ),
        )
      ])),
    );
  }
}
