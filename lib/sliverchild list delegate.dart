import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: custom(),
  ));
}

class custom extends StatelessWidget {
  var name = [
    'sanjay',
    'arshi',
    'chithra',
    'hari',
    'pepe',
    'sanjay',
    'arshi',
    'chithra',
    'hari',
    'pepe',
    'sanjay',
    'arshi',
    'chithra',
    'hari',
    'pepe'
  ];

  custom({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: ListView.custom(
          itemExtent: 100,
          childrenDelegate: SliverChildListDelegate([
            Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ), Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ),
            Card(
              color: Colors.yellow[50],
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
            ), Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ), Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ), Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ), Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ), Card(
              color: Colors.yellow[50],
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("ronaldinho"),
                subtitle: const Text("mobile.8.45 AM"),
                leading: const Icon(Icons.account_circle),
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
            Card(
              color: Colors.yellow[50],
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
                ),
              ),
            ),
          ]),
        ));
  }
}
