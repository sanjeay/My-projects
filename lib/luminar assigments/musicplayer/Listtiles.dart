import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            trailing: Wrap(
              children: [
                Icon(Icons.star_border,color: Colors.pink.shade200,),
                SizedBox(width: 20,),
                Icon(Icons.download,color: Colors.pink.shade200,
                ),SizedBox(width: 30,)],
                ),
            tileColor: Colors.black,
            title: Text("perfect",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            subtitle: Text("Ed sheeran",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/An In-Depth Review of Ed Sheeran’s New Album.jpeg")),
          ),
          ListTile(
            trailing: Wrap(
              children: [
                Icon(Icons.star_border,color: Colors.pink.shade200,),
                SizedBox(width: 20,),
                Icon(Icons.download,color: Colors.pink.shade200,
                ),SizedBox(width: 30,)],
            ),
            tileColor: Colors.black,
            title: Text("perfect",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            subtitle: Text("Taylor swift",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/Summer illustrations 2020.jpeg")),
          ),ListTile(
            trailing: Wrap(
              children: [
                Icon(Icons.star_border,color: Colors.pink.shade200,),
                SizedBox(width: 20,),
                Icon(Icons.download,color: Colors.pink.shade200,
                ),SizedBox(width: 30,)],
            ),
            tileColor: Colors.black,
            title: Text("perfect",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            subtitle: Text("Ed sheeran",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/An In-Depth Review of Ed Sheeran’s New Album.jpeg")),
          ),
          ListTile(
            trailing: Wrap(
              children: [
                Icon(Icons.star_border,color: Colors.pink.shade200,),
                SizedBox(width: 20,),
                Icon(Icons.download,color: Colors.pink.shade200,
                ),SizedBox(width: 30,)],
            ),
            tileColor: Colors.black,
            title: Text("perfect",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            subtitle: Text("Taylor swift",style: GoogleFonts.mukta(color: Colors.pink.shade200),),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/Summer illustrations 2020.jpeg")),
          )
        ],
      )
    );
  }
}