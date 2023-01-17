import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(home: custoo(),));
}

class custoo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("study"),),
      body: StaggeredGridView.count(

        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        staggeredTiles: [
          StaggeredTile.count(1, 1),
          StaggeredTile.count(1, 1),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(3, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(1, 4),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(1, 4),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 1),


        ],
        children: [
          customchild(Colors.green, Icons.access_time_filled),
          customchild(Colors.red, Icons.access_time_filled),
          customchild(Colors.black54, Icons.access_time_filled),
          customchild(Colors.black87, Icons.access_time_filled),
          customchild(Colors.yellow, Icons.access_time_filled),
          customchild(Colors.brown, Icons.access_time_filled),
          customchild(Colors.indigo, Icons.access_time_filled),
          customchild(Colors.pinkAccent, Icons.access_time_filled),
          customchild(Colors.red, Icons.access_time_filled),
          customchild(Colors.black54, Icons.access_time_filled),
          customchild(Colors.black87, Icons.access_time_filled),
          customchild(Colors.yellow, Icons.access_time_filled),
          customchild(Colors.brown, Icons.access_time_filled),
          customchild(Colors.indigo, Icons.access_time_filled),
          customchild(Colors.pinkAccent, Icons.access_time_filled),


        ],
      ),
    );
  }

}

class customchild extends StatelessWidget {
  final Color colorr;
  final IconData ICon;


  const customchild(this.colorr, this.ICon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorr,
      child: Icon(ICon, color: Colors.white),
    );
  }

}