import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: navi(),));
}
class navi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(decoration: BoxDecoration(color: Colors.green),
        child: Drawer(
          child: ListView(
            children: [
               UserAccountsDrawerHeader(accountName: Text("sanjay"), accountEmail: Text("jebascene1@gmail.com")),
              ListTile(
                title: Text("Dasboard"),
                leading: Icon(Icons.dashboard),
              ),ListTile(
                title: Text("Leads"),
                leading: Icon(Icons.leaderboard_sharp),
              ),ListTile(
                title: Text("Clients"),
                leading: Icon(Icons.person_remove_sharp),
              ),ListTile(
                title: Text("Projects"),
                leading: Icon(Icons.rocket),
              )
              ,ListTile(
                title: Text("partners"),
                leading: Icon(Icons.flag),
              ),ListTile(
                title: Text("Subscription"),
                leading: Icon(Icons.dashboard),
              ),ListTile(
                title: Text("Payments"),
                leading: Icon(Icons.money),
              ),ListTile(
                title: Text("Users"),
                leading: Icon(Icons.verified_user_rounded),
              ),ListTile(
                title: Text("Library"),
                leading: Icon(Icons.library_add),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: (){}, child: Text("logout")),
              )
            ],
          ),
    ),
      ),
    );
  }

}

