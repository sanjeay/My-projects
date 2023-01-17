import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trsm(),
  ));
}

class Trsm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 70,
          ),

          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/4353/4353032.png"))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 140, right: 140, top: 80),
            child: Container(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {},
                  child: Text("Login",style:GoogleFonts.quicksand(color: Colors.white),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "- or -",
              textAlign: TextAlign.center,style:GoogleFonts.quicksand(color: Colors.grey),)
            ),

          Padding(
            padding: const EdgeInsets.only(top: 80, left: 100, right: 100),
            child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                tileColor: Colors.blue.shade800,
                title: Text("Login with Facebook",style:GoogleFonts.quicksand(color: Colors.white),),
                trailing: Icon(
                  Bootstrap.facebook,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
            child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                tileColor: Colors.cyan,
                title:  Text("Login with twitter",style:GoogleFonts.quicksand(color: Colors.white),),
                trailing: Icon(
                  Bootstrap.twitter,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              tileColor: Colors.red.shade400,
              title: Text(
                "Login with Google",style:GoogleFonts.quicksand(color: Colors.white, ),
              ),
              trailing: Icon(
                Bootstrap.google,
                color: Colors.white,
              ),
            ),
          ),
     ],
      ));

  }
}
