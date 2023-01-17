import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: Expan(),));
}

class Expan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(elevation:0,title: const Center(child: Text("Experience",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF301934))))),
      body: SingleChildScrollView(
        child: Container(
          width: 1000,
          height: 1000,
          color: Colors.blue,
          child: Column(
            children: [
              Stack(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_ntrhqntu.json",height: 150,width: 500,fit: BoxFit.fill),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ExpansionTile(title: Text("Flutter Internship",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("6 months +",style:TextStyle(color: Colors.white)),
                      ),
                      children: [
                        Text("nee superaada",style:TextStyle(color: Colors.white)),
                        Text("eda nee superaada",style:TextStyle(color: Colors.white))
                      ],

                    ),
                  )
                ],



              ),
              Stack(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_ntrhqntu.json",height: 150,width: 500,fit: BoxFit.fill),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ExpansionTile(title: Text("Flutter Internship",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("6 months +",style:TextStyle(color: Colors.white)),
                      ),
                      children: [
                        Text("nee superaada",style:TextStyle(color: Colors.white)),
                        Text("eda nee superaada",style:TextStyle(color: Colors.white))
                      ],

                    ),
                  )
                ],



              ),

            ],
          ),
        ),
      ),
    );
  }

}