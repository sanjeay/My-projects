import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';


class Starjourney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "JOIN THE OCHUA \nCOMMUNITY",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Sign up any way you like and start working out",
                      style:
                          GoogleFonts.montserrat(color: Colors.black, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ListTile(
                          leading: Icon(
                            Bootstrap.google,
                            color: Colors.orange.shade900,
                          ),
                          title: Text(
                            "Google",
                            style:
                            GoogleFonts.montserrat(color: Colors.black, fontSize: 15),
                          ),
                        ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ListTile(
                          leading: Icon(Bootstrap.facebook,color: Colors.blue.shade800,),
                          title: Text("Facebook",style: GoogleFonts.montserrat(fontSize: 15),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ListTile(
                          leading: Icon(Bootstrap.mailbox,color: Colors.black,),
                          title: Text("E-Mail",style: GoogleFonts.montserrat(fontSize: 15),),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
