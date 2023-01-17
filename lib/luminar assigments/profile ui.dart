import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_ui(),));
}

class Profile_ui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
            Container(
              child: CircleAvatar(radius: 75,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/03/24/18/08/cat-2171788_1280.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20,bottom: 40),
              child: Container(
                height: 50,
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968764.png"),
                    Image.network("https://cdn-icons-png.flaticon.com/512/3670/3670151.png"),
                    Image.network("https://cdn-icons-png.flaticon.com/512/145/145807.png"),
                    Image.network("https://cdn-icons-png.flaticon.com/512/733/733609.png"),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text("Meow",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text("@poocha"),
                ),
                Text("Mobile App Developer",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.privacy_tip_outlined),
                                title: Text("Privacy"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.history),
                                title: Text("Purchase History"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.help_outline),
                                title: Text("Help and Support"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.settings),
                                title: Text("Settings"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.add_reaction_outlined),
                                title: Text("Invite a friend"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                            child: ListTile(
                              leading: Icon(Icons.logout),
                              title: Text("Log out"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}