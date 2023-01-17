import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Tourismhead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 15),
            child: Text("Popular",style: GoogleFonts.poppins(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15),
            child: Text("Places",style: GoogleFonts.poppins(fontSize:25),),
          )
        ],
      ),
    );
  }
}
