import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/pass%20data%20between%20pages/List.dart';

void main(){
  runApp(MaterialApp(home: Csv(),));
}

class Csv extends StatelessWidget {
  const Csv({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [

        ],
      ),
    );
  }
}