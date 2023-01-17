import 'package:flutter/material.dart';
import 'package:project1/pass%20data%20between%20pages/List.dart';

class secondss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///Fetch the detailes of product from previous page
    final productid = ModalRoute.of(context)?.settings.arguments;
    final products = dummyproducts.firstWhere((data) => data["id"]==productid);
   return Scaffold(
     appBar: AppBar(),
     body: Column(
       children: [
          Text("${products["id"]}"),
         Text("${products["name"]}")
       ],
     ),
   );
  }

}