import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(){
  runApp(MaterialApp( home: Access(),));
}

class Access extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              await ImagePicker().pickImage(source: ImageSource.camera);
            }, child: Text("choose from camera")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()async{
              await ImagePicker().pickImage(source: ImageSource.gallery);
            }, child: Text("choose from gallery"))
          ],
        ),
      ),
    );
  }
}