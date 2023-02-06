import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/trsmui/datass.dart';
import 'package:project1/trsmui/secondpage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {"second":(context)=>secondscreeen()},
    home: Firstpage(),));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: ListView(
      children: [
        SizedBox(height: 14,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Popular",style: GoogleFonts.poppins(fontSize: 18),),
        ),
        const SizedBox(height:10,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Places",style:GoogleFonts.poppins(fontSize: 30),),
        ),
       Column(
         children: traveldatas.map((Travelinfo) => GestureDetector(
           onTap: ()=>gotonxt(context,Travelinfo["id"]),
           child: Padding(
             padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
             child: Container(
               child: ListTile(
                 leading: Text("${Travelinfo["place"]}",style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),),
               ),
               height: 120,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   image: DecorationImage(image: NetworkImage("${Travelinfo["images"]}"),fit: BoxFit.cover)),
             ),
           ),
         )).toList()
       )
      ],
    ),
    );
  }

void  gotonxt(BuildContext context, Travelinfo) {
    Navigator.of(context).pushNamed("second",arguments:Travelinfo);
}
}