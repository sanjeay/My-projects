import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: alrt(),));
}
class alrt extends StatelessWidget{
  showAlertdialogue(context){
    showDialog(context: context, builder:(context){
      return AlertDialog(
        title: Text("choose imgae"),
         content: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text("choose from gallery"),
             Text("take a picture")
           ],
         ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertdialogue(context);
            }, child: Text("choose"))
          ],
        ),
      ),
    );
  }

}