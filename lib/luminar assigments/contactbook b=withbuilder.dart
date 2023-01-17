import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:"sanjay",
    home: conta(),
  ));
}

class conta extends StatelessWidget {
  var name = ["sanjay", "Arshi", "chithra", "hari", "nived", "drona"];
  var num = [
    '4354543',
    '435554346',
    '4326563' '5425462',
    '45253454',
    '63453452'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: num.length,
        itemBuilder: (context, index) {
      return Card(
        color: Colors.green,
        child: ListTile(

          leading: const Icon(Icons.contact_page),
          title: Text(name[index]),
          subtitle: Text(num[index]),
          trailing: Wrap(children: const [Icon(Icons.call), Icon(Icons.message)]),
        ),
      );
    });
  }
}
