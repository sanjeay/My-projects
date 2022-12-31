import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_count(),
  ));
}

class Grid_count extends StatelessWidget {
  const Grid_count({super.key});

  @override
  Widget build(BuildContext context) {
    var imagesz = [
      "https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "https://cdn.pixabay.com/photo/2017/03/29/10/41/london-2184807_1280.jpg",
      "https://cdn.pixabay.com/photo/2015/09/22/12/28/eiffel-tower-951509_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/09/12/15/36/moscow-2742642_1280.jpg",
      "https://cdn.pixabay.com/photo/2019/07/12/01/07/mountain-4331689_1280.jpg"
    ];
    var places = ["USA", "England", "France", "Russia", "Canada"];
    return Scaffold(
        appBar: AppBar(
            title: const ListTile(
              title: Text(
                "GridView()",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Stack(
                children: [
                  Card(
                    shadowColor: Colors.black45,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Image.network(
                      imagesz[index],
                      fit: BoxFit.cover,
                      height: 500,
                      width: 500,
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      left: 12,
                      child: Text(
                        places[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                      )),
                ],
              ),
            );
          }),
        ));
  }
}