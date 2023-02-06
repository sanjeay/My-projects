import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stpr(),
  ));
}

class Stpr extends StatefulWidget {
  @override
  State<Stpr> createState() => _StprState();
}

class _StprState extends State<Stpr> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Stepper(
          physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          currentStep: index,
          onStepCancel: () {
            if (index > 0) {
              setState(() {
                index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (index <= 0) {
              setState(() {
                index += 1;
              });
            }
          },
          steps: <Step>[
            Step(
              title: Text("1"),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Content for Step 1')),
            ),
            Step(
              title: Text("2"),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Content for Step 1')),
            )
          ],
        ),
      ),
    );
  }
}
