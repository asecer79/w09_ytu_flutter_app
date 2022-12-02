import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePicturePage extends StatefulWidget {
  const TakePicturePage({super.key});

  @override
  State<TakePicturePage> createState() => _TakePicturePageState();
}

class _TakePicturePageState extends State<TakePicturePage> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Take picture from camera")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageFile != null
                ? GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        imageFile = null;
                      });
                    },
                    child:
                        Image.file(imageFile!, fit: BoxFit.cover, width: 250))
                : ElevatedButton(
                    onPressed: () async {
                      var takenPicture = await ImagePicker.platform
                          .getImage(source: ImageSource.camera);
                      setState(() {
                        imageFile = File(takenPicture!.path);
                      });
                    },
                    child: Text("Open camera")),
          ],
        ),
      ),
    );
  }
}
