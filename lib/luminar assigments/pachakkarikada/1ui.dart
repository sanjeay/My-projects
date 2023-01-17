
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: veg(),
  ));
}

class veg extends StatelessWidget {
  const veg({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("c slider"),
      ),
      body: CarouselSlider(
          items: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/long-stay-hotel-accommodation.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/long-stay-hotel-accommodation.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/long-stay-hotel-accommodation.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/long-stay-hotel-accommodation.jpg"))),
            )
          ],
          options: CarouselOptions(
            autoPlay: true,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              initialPage: 1,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enableInfiniteScroll: true)),
    );
  }
}
