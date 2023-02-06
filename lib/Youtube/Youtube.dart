import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: utube(),
  ));
}

class utube extends StatefulWidget {
  @override
  State<utube> createState() => _utubeState();
}

class _utubeState extends State<utube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(
      //     "YouTube",
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
      //   ),
      //   leading: Image.asset("assets/icons/youtube.png"),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.devices_outlined,
      //       color: Colors.white,)),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications,
      //       color: Colors.white,)),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.search,
      //       color: Colors.white,)),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     CircleAvatar(
      //       backgroundImage: AssetImage("assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"),
      //     )
      //   ],
      // ),
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Text(
              "YouTube",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
            ),
            floating: true,
            pinned: true,
            leading: Image.asset("assets/icons/youtube.png"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.devices_outlined,
                color: Colors.white,)),
              SizedBox(
                width: 10,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications,
                color: Colors.white,)),
              SizedBox(
                width: 10,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search,
                color: Colors.white,)),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"),
              )
            ],
          ),
          SliverList(delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        // border: Border.all(
                        //     color: Colors.white60
                        // ),
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      height: 30,
                      width: 50,
                      child: Center(
                          child: Icon(Icons.explore_outlined,color: Colors.white,)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.white60
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 30,
                      width: 35,
                      child: Center(
                        child: Text("All",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        border: Border.all(
                            color: Colors.white60
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 30,
                      width: 60,
                      child: Center(
                        child: Text("Mixes",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        border: Border.all(
                            color: Colors.white60
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 30,
                      width: 60,
                      child: Center(
                        child: Text("Music",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        border: Border.all(
                            color: Colors.white60
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 30,
                      width: 120,
                      child: Center(
                        child: Text("Malayalam Cinemas",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        border: Border.all(
                            color: Colors.white60
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 30,
                      width: 60,
                      child: Center(
                        child: Text("Jukebox",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ]
          )
          )
        ],
      ),
    );
  }
}