import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Staggerd()));
}

class Staggerd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTiles:const [StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(3, 2),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(3, 2),
          StaggeredTile.count(2, 4),

        ],
          children: [
            customchild(bgcolor: Colors.red, iconData: Icons.account_circle)
          ],
      ),
    );
  }
}
class customchild extends StatelessWidget{
  late final Color bgcolor;
  late final IconData iconData;
  customchild({required this.bgcolor,required this.iconData});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Card(
       color: bgcolor,
      child: Icon( iconData,color:Colors.white ),
    );
  }

}