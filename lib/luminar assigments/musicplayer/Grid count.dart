import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    home: Grdd(),
  ));
}

class Grdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Playlists",style: GoogleFonts.mukta(fontSize: 30,color: Colors.pink.shade50),textAlign: TextAlign.center,),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.pink.shade50)),
                  child:TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                     labelText: "search...",labelStyle: TextStyle(color: Colors.pink.shade50),
                      suffixIcon: Icon(Icons.search,color: Colors.pink.shade50,),

                    ),
                  ),
                ),
              ),
            Container(
              height: 2000,
              width: double.infinity,
              child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/car music.jpeg"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://davidbyrne.com/images/made/images/uploads/radio/pop-art-gary-grayson_442_442_60_c1.jpeg"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i1.sndcdn.com/artworks-h37XMNbMHw7mtQIy-E7g6YA-t500x500.jpg"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/download (1).jpeg"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/png-transparent-orange-smoke-on-yellow-abstract-background.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/img_2.png"))),
                ),
              ), Padding(
          padding: const EdgeInsets.only(right: 10,top: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("assets/images/car music.jpeg"))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10,top: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://davidbyrne.com/images/made/images/uploads/radio/pop-art-gary-grayson_442_442_60_c1.jpeg"))),
          ),
        ),
      ],
    ),
            ),
          ],
        ));
  }
}
