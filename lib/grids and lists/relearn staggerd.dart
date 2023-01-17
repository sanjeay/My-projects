import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: stggd(),
  ));
}

class stggd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: const Text("stggd"),
    ),
    body: StaggeredGrid.extent(
    maxCrossAxisExtent: 100,
    mainAxisSpacing: 2,
    crossAxisSpacing: 2,
    children: [
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 3,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 4,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 3,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Card(
    color: Colors.red,
    ),),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 4,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 3,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 4,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 3,
    child: Card(
    color: Colors.red,
    ),
    ),
    StaggeredGridTile.count(
    crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Card(
    color: Colors.red,
    ),
    )


    ]));
  }
}
