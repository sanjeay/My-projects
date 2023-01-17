import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: lte(),));
}
class lte extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:Lottie.network("https://assets6.lottiefiles.com/packages/lf20_nix2nsiz.json") ,
      ),
    );
  }

}