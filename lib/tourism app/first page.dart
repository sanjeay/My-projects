import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Firstpage(),));
}

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 30),
            child: Text("Popular",style: GoogleFonts.poppins(fontSize: 15),),

          ),
          Padding(
            padding: const EdgeInsets.only(top:10,left: 15),
            child: Text("Places",style: GoogleFonts.poppins(fontSize: 25),),
          ),

        ],
      ),
    );
  }
}