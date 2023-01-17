import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: dd(),));
}
class dd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ExpansionTileCard(title: Text("sad"),
      children: [
        Card(
          child: Lottie.network("https://assets7.lottiefiles.com/packages/lf20_dyn823bp.json"),
        )
      ],),
    );
  }
  
}