
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: Musify(),
  ));
}

class Musify extends StatefulWidget {
  const Musify({super.key});

  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                "Musify",
                style: GoogleFonts.mukta(
                    fontSize: 30, color: Colors.pink.shade200),
                textAlign: TextAlign.center,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Row(
                children: [
                  Text(
                    "suggested playlists",
                    style: GoogleFonts.mukta(
                        color: Colors.pink.shade200, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: CarouselSlider(items: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/car music.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/Soundbreaking_DVD_product-1.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/car music.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/Soundbreaking_DVD_product-1.png"),
                            fit: BoxFit.cover)),
                  ),
                )
              ], options: CarouselOptions(viewportFraction: 0.7, height: 270)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Text(
                    "Recommended for you",
                    style: GoogleFonts.mukta(
                        color: Colors.pink.shade200, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.download_outlined,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                tileColor: Colors.black,
                subtitle: Text(
                  "Snoop dogg",
                  style: GoogleFonts.mukta(color: Colors.white),
                ),
                title: Text(
                  "See you again",
                  style: GoogleFonts.mukta(color: Colors.pink.shade200),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                        "assets/images/png-transparent-orange-smoke-on-yellow-abstract-background.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.download_outlined,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                tileColor: Colors.black,
                subtitle: Text(
                  "Jordanindian",
                  style: GoogleFonts.mukta(color: Colors.white),
                ),
                title: Text(
                  "Go home",
                  style: GoogleFonts.mukta(color: Colors.pink.shade200),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child:
                            Image.asset("assets/images/arshi.png"))),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.download_outlined,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                tileColor: Colors.black,
                subtitle: Text(
                  "Justin bieber",
                  style: GoogleFonts.mukta(color: Colors.white),
                ),
                title: Text(
                  "Shape of you",
                  style: GoogleFonts.mukta(color: Colors.pink.shade200),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child:Image.asset(
                            "assets/images/chithra.daz.png"))),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.download_outlined,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                tileColor: Colors.black,
                subtitle: Text(
                  "Taylor swift",
                  style: GoogleFonts.mukta(color: Colors.white),
                ),
                title: Text(
                  "Hero",
                  style: GoogleFonts.mukta(color: Colors.pink.shade200),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child:  Image.asset("assets/images/download (1).jpeg"))),
              ),

            Padding(
              padding:  EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.download_outlined,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                tileColor: Colors.black,
                subtitle: Text(
                  "Ed sheeran",
                  style: GoogleFonts.mukta(color: Colors.white),
                ),
                title: Text(
                  "Perfect",
                  style: GoogleFonts.mukta(color: Colors.pink.shade200),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset("assets/images/Ed_Sheeran_Perfect_Single_cover.jpg"))),
              ),

          ],
        ),
      ),
    );
  }
}
