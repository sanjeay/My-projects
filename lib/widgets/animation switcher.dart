import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Anmtnswtchr(),));
}

class Anmtnswtchr extends StatefulWidget{
  @override
  State<Anmtnswtchr> createState() => _AnmtnswtchrState();
}

class _AnmtnswtchrState extends State<Anmtnswtchr> {
  @override
  Widget build(BuildContext context) {
    bool isButtonPressed=false;
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 600,
            width: double.infinity,
            child: AnimatedSwitcher(
                duration: const Duration(seconds:1),
                child:isButtonPressed == false
                    ? const Image(
                  key: Key("1"),
                  image: AssetImage("assets/images/arshi.png"),
                )
                    : const Image(
                  key:Key("2"),
                  image: AssetImage("assets/images/chithra.daz.png"),
                )),
          ),
          SizedBox(
            height: 50,
            width: 80,
            child: ElevatedButton(
              onPressed: () {
                setState(
                      () {
                    isButtonPressed ==false
                        ? isButtonPressed = true
                        : isButtonPressed = false;
                  },
                );
              },
              child: const Text("Press"),
            ),
          ),
        ],
      ),
    );
  }
}

