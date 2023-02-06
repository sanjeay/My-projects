import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getView(1 , Colors.red),
              getView(2 , Colors.yellow),
              getView(3 , Colors.green),
              getView(4 , Colors.lime),
              getView(5 , Colors.brown),
              getView(6 , Colors.blueAccent),
              getView(7 , Colors.purple),
            ],
          ),
        )
    ),
  ));
}

Widget getView(int pos , Color color){
  return  Expanded(
    child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)
      ),
      onPressed: (){
        playSound(pos);
      },
      child: Text("Click Me"),
    ),
  );
}

void playSound(int pos) {
  final audioPlayer = AudioCache();
  audioPlayer.play('assets_note$pos.wav');
}