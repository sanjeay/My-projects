import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/hotel/grid.dart';
import 'package:project1/luminar%20assigments/hotel/hotel%20boxes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: htl1(),
  ));
}

class htl1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            leading: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.menu),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.favorite_border),
              ),
            ],
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Center(
                    child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Type your location",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.search)),
                            ),
                            hintText: "search location"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  height: 100,
                  width: 120,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.hotel,
                          color: Colors.white,
                        ),
                        Text("HOTEL", style: TextStyle(color: Colors.white))
                      ]),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  height: 100,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                      Text(
                        "RESTAURANT",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5)),
                  height: 100,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.local_cafe,
                        color: Colors.white,
                      ),
                      Text(
                        "CAFE",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/long-stay-hotel-accommodation.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10.0,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 30,
                            color: Colors.white,
                            child: Text("\$40"),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            top: 10,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Row(
                      children: [
                        Text(
                          "Awsome room near Boudha",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Buddha,Kadmandu",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Text("(220 reviews)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/SuperiorRoom-(1).jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10.0,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 30,
                            color: Colors.white,
                            child: Text("\$60"),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            top: 10,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Row(
                      children: [
                        Text(
                          "Beautiful room near goa",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Goa,Anjuna",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.green,
                        ),
                        Text("(120 reviews)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i0.wp.com/koloapp.in/magazine/wp-content/uploads/2022/11/image1-29.png"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10.0,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 30,
                            color: Colors.white,
                            child: Text("\$60"),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            top: 10,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Row(
                      children: [
                        Text(
                          "Kidilan room near Kulu",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Himachal,Kulu",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.green,
                        ),
                        Text("(100 reviews)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
