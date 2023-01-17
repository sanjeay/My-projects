import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'datas.dart';


class Travpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //fetch the id from the prvious page
    final travdataid = ModalRoute.of(context)?.settings.arguments;
    //check the id found in the given list if found fetch all the value corresponding to that id
    final travdata = traveldatas.firstWhere((data) => data["id"]== travdataid);
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Details'),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image:NetworkImage("${travdata["images"]}") ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("${travdata["place"]}"),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top:8),
                  child: Text("${travdata["description"]}"),
                ),
              ),
            ),
             const Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Text("places to visit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: CarouselSlider(
                  items:  [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/01/14/13/59/castelmezzano-1979546__480.jpghttps://cdn.pixabay.com/photo/2017/01/14/13/59/castelmezzano-1979546__480.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/04/27/05/09/tree-2264494_1280.jpg",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/11/14/03/29/grand-palace-1822487_1280.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 0.6,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 4/1.5,
                    autoPlayCurve:Curves.easeInOutCubicEmphasized,
                    autoPlayAnimationDuration:const Duration(milliseconds: 800) ,
                    enableInfiniteScroll: true,
                  )),
            ),
          ],
        ),
      ),
    );
  }

}
