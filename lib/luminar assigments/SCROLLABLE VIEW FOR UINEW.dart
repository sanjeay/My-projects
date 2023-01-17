import 'package:flutter/material.dart';


class scr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  leading: Icon(Icons.privacy_tip),
                  title: Text("Privacy"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  leading: Icon(Icons.history),
                  title: Text("Purchase history"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),SizedBox(height:10),
              Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  leading: Icon(Icons.help),
                  title: Text("Help and support"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),SizedBox(height:10),
              Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),SizedBox(height:10),
              Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  leading: Icon(Icons.add),
                  title: Text("Invite friend"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
