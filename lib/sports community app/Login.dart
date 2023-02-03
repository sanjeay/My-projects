import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    home: Log(),
  ));
}

class Log extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
                      ))),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: const Text("WELCOME BACK",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    )),
              ]),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text("Lgin with one of the following optios and get started",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 13,
                        )),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: ListTile(
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
      ),
    );
  }
}
