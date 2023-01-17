import 'package:flutter/material.dart';

import 'Seconpage.dart';
import 'datas.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "second":(context)=> Travpage(),
    },
    home: const FirstScreen(),));
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(

            children:[
              const Text("Places"),
              const Padding(
                padding: EdgeInsets.only(top: 8,bottom: 8),
                child: Text("Popular",style:TextStyle(fontSize: 25),),
              ),
              Column(
                  children:
                  traveldatas.map((travdata) => GestureDetector(onTap: ()=>gotonext(context,travdata["id"]), child:

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(Colors.blue.shade200, BlendMode.modulate),
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            '${travdata["images"]}',
                          ),
                        ),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Text(
                            '${travdata["place"]}',
                            style: const TextStyle(color: Colors.white,fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),)).toList()
              ),
            ],),
        )
    );

  }

}

void gotonext(BuildContext context, travdata) {
  Navigator.of(context).pushNamed("second",arguments: travdata);
}