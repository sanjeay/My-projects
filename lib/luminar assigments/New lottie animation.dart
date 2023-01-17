import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.cyan.shade200),
    debugShowCheckedModeBanner: false,
    home: anime(),
  ));
}

class anime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: Text("EXPERIENCE",
                  style: GoogleFonts.yuseiMagic(
                      fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white)),
            ),
            Center(
              child: Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Summer illustrations 2020.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 40,
                        left: 20,
                        child: Text("FLutter internship",
                            style: GoogleFonts.yuseiMagic(
                                fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white))),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: Row(
                          children: [
                            Text(
                              "6 months +", style: GoogleFonts.yuseiMagic(
                                fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/11,247 Sea Bottom Cliparts, Stock Vector and Royalty Free Sea Bottom Illustrations.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 40,
                        left: 20,
                        child: Text(
                            "Android Training", style: GoogleFonts.yuseiMagic(
                            fontWeight: FontWeight.bold, fontSize: 35,color: Colors.white)
                        )),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: Row(
                          children: [
                            Text(
                              "2 months ", style: GoogleFonts.yuseiMagic(
                                fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Skills for Life for Scouts.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 40,
                        left: 20,
                        child: Text(
                            "Java Training",style:GoogleFonts.yuseiMagic(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white)
                        )),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: Row(
                          children: [
                            Text(
                              "2 months ", style: GoogleFonts.yuseiMagic(
                                fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
