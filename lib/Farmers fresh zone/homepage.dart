
import 'package:flutter/material.dart';

import 'Grid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: farmersfresh(),
  ));
}

class farmersfresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.green,
        title: Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: 5,
                ),
                Text("kochi"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "search for vegetables and fruits here....."),
                ),
              ),
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "VEGITABLES",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "FRUITS",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "EXOTIC",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "FRESH CUTS",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 7,),
          child: Container(
           height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://food.unl.edu/newsletters/images/fresh-vegetables-basket.png"))),
          ),
        ),
      ),
          SliverToBoxAdapter(
            child:
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black38)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timer),
                        Text("30MIN POLICY")
                      ],
                    ),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.my_location_rounded),
                        Text("TRACEBILITY")
                      ],
                    ),Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.food_bank),
                        Text("LOCAL SOURCING")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child:
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Text("Shop by catorgories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            )
          ),
          SliverToBoxAdapter(
            child: VegGrid(),
          )
    ]));
  }
}
