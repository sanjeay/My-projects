import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Contacts()));
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.line_weight_rounded), onPressed: () { },),
        title: Text("contacts"),
        actions: [Icon(Icons.search)],
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.yellow[50],
            shadowColor: Colors.black,
            child: ListTile(
              title: Text("ronaldinho"),
              subtitle: Text("mobile.8.45 AM"),
              leading: Icon(Icons.account_circle),
              trailing: Wrap(
                children: const [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.message),
                ],
              ),
            ),
          ),
          Card(color: Colors.yellow[50],
            shadowColor: Colors.black,
            child: ListTile(
              title: const Text("roberto carlos"),
              subtitle: const Text("mobile.6.00 AM"),
              leading: const Icon(Icons.account_circle),
              trailing: Wrap(
                children: const [
                  Icon(Icons.phone),
                  SizedBox(width: 20),
                  Icon(Icons.message)
                ],
              )
              ,
            ),
          ),
          Card(color: Colors.yellow[50],
            child: ListTile(
              title: const Text("puyol"),
              subtitle: const Text("mobile.5.00 AM"),
              leading: const Icon(Icons.account_circle),
              trailing: Wrap(
                children: const [
                  Icon(Icons.phone),
                  SizedBox(width: 20),
                  Icon(Icons.message)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
