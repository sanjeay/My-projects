import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: til(),));
}
class til extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body:  ExpansionTileCard(title: Text("Rooms"),
      children: [
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/long-stay-hotel-accommodation.jpg"))),

              ),SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    Text("WHAT IS ROOM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                child: Container(
                  child: Text(style: TextStyle(fontWeight: FontWeight.bold),"The hotel industry is so big and diverse that each hotel has come up with specialty products and services to carve out a niche for itself. Depending on the services on offer, the clients they are targeting, or their location, rooms can be categorized variously to provide customers with an indication of their profile and what to expect from them.The main advantage of classification is that it lends uniformly to services and sets the general standards of a hotel. Other benefits of the exercise include giving an idea about the range and type of hotels available within a geographical area and protecting the users by ensuring the minimum quality available in each category."



                  ),
                ),
              ),
            ],
          )

        ),
      )],),
    );
  }

}