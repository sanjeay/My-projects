import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:luminar_assignments/Touism%20App%20UI%202/list.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final detailss = ModalRoute.of(context)?.settings.arguments;
    // final details1 =
    //     dummylist.firstWhere((data) => data["heading"] == detailss);
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.blue.withOpacity(0.0)),
      body: SafeArea(
        child: Column(children: [
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Most Luxurious &",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 2 ,),
                    Text(" Peaceful Natural Place",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 2 ,),
                    //Text("${details1["heading"]}"),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: CupertinoColors.systemYellow,
                        ),
                        Icon(
                          Icons.star,
                          color: CupertinoColors.systemYellow,
                        ),
                        Icon(
                          Icons.star,
                          color: CupertinoColors.systemYellow,
                        ),
                        Icon(
                          Icons.star,
                          color: CupertinoColors.systemYellow,
                        ),
                        Icon(
                          Icons.star_half_sharp,
                          color: CupertinoColors.systemYellow,
                        ),
                        Text("4.5 Rating",style: TextStyle(color: Colors.black26),)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 90, width: 200,
                  child: Image(image: NetworkImage("https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmVhY2glMjByZXNvcnR8ZW58MHx8MHx8&w=1000&q=80"),),
                  //child: Image.network(details1["image1"]),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text(
                  "About Places",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "A resort is a place used for vacation, relaxation or as a daytime getaway. While this can be a single structure such as a hotel, it also can be a whole island or a ship at sea. One of the most looked-for aspects of a resort is that visitors are freed from most daily errands, which are typically taken care of by the facility’s staff. Numerous activities are usually presented at resorts, as well as massages, meals, live entertainment and cosmetic treatments.",
                  style: TextStyle(
                      fontSize:15,
                      color: Colors.black),textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 295),
                child: Text("Special Facilities",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.lock_clock,color: Colors.blueAccent,),
                  Text("Free Dining",
                      style: TextStyle(color: Colors.black)),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.security,color: Colors.blueAccent,),
                  Text("24*7 Support",
                      style: TextStyle(color: Colors.black)),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.wifi,color: Colors.blueAccent,),
                  Text("WiFi",
                      style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image(image: NetworkImage("https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80"),
                  fit: BoxFit.fill,),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text("Our Packages",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 50,
                width: 50,
                child: Center(
                  child: Text("Adult",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 50,
                width: 50,
                child: Center(
                  child: Text("Child",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 50,
                width: 50,
                child: Center(
                  child: Text("Night",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 50,
                width: 50,
                child: Center(
                  child: Text("Floor",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Card(
            color: CupertinoColors.activeBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Text("\$800.00                                                                   Booking",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ]
        ),
      ),
    );
  }
}