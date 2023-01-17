import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(

    debugShowCheckedModeBanner: false,
    home: griddd(),
  ));
}

class griddd extends StatelessWidget {
  const griddd({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("adipoli"),),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            mainAxisExtent: 100),
        children: const [
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen),
        ],
      ),
    );
  }
}
