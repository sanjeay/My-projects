import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Image picker Package

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera and Gallery Access'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await selectImageFromCamera(); //Function Caiing for Access Camera
              },
              child: const Text('Click For Camera'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                await selectImageFromGallery(); //Function Caiing for Access Gallery
              },
              child: const Text('Click For Gallery'),
            )
          ],
        ),
      ),
    );
  }
}

// PickImage Function for gallery Access

selectImageFromGallery() async {
  await ImagePicker().pickImage(source: ImageSource.gallery);
}



// PickImage Function for gallery Camera

selectImageFromCamera() async {
  await ImagePicker().pickImage(source: ImageSource.camera);
}