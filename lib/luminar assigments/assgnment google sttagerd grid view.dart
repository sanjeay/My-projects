import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StaggeredGridView3(),
  ));
}

class StaggeredGridView3 extends StatefulWidget {
  const StaggeredGridView3({super.key});

  @override
  State<StaggeredGridView3> createState() => _StaggeredGridView3State();
}

class _StaggeredGridView3State extends State<StaggeredGridView3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Staggered Gridview Flutter")),),
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.5,
                child: Card(
                  child: Customchild(
                    txt: 'Mysteries of the universe revealed',
                    date: '13 June 2013',
                    auth: 'Cart Sagan',
                    imgz:
                    'https://cdn.pixabay.com/photo/2017/03/02/16/54/iceland-2111811_1280.jpg',
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: Card(
                  child: Customchild(
                    txt: 'An Empire State of somewhere',
                    date: '12 July 2013',
                    auth: 'Ernest Hemingway',
                    imgz:
                    'https://cdn.pixabay.com/photo/2020/06/16/01/40/buildings-5303864_1280.jpg',
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.5,
                child: Card(
                  child: Customchild(
                    txt: '10 Tips for Hipster that is very important',
                    date: '11 May 2014',
                    auth: 'Vincent Van Gogh',
                    imgz:
                    'https://cdn.pixabay.com/photo/2021/12/18/07/55/cup-6878196_1280.jpg',
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.5,
                child: Card(
                  child: Customchild(
                    txt: 'My Story of Climbing Mount',
                    date: '13 May 2015',
                    auth: 'Unknown',
                    imgz:
                    'https://cdn.pixabay.com/photo/2017/02/14/03/03/ama-dablam-2064522_1280.jpg',
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.6,
                child: Card(
                  child: Customchild(
                    txt: 'Why you need a dog?',
                    date: '30 June 2015',
                    auth: 'brownie',
                    imgz:
                    'https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_1280.jpg',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Customchild extends StatelessWidget {
  final String imgz;
  final String txt;
  final String date;
  final String auth;

//  VoidCallback onpress;

  Customchild(
      {required this.txt,
        required this.date,
        required this.auth,
        required this.imgz});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Image.network(
              imgz,
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                txt,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ListTile(
                subtitle: Text(
                  auth,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )),
          ],
        ));
  }
}