import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imgpicker extends StatefulWidget {
  const Imgpicker({super.key});

  @override
  State<Imgpicker> createState() => _ImgpickerState();
}

class _ImgpickerState extends State<Imgpicker> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Image Picker',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade500,
              child: Center(child:file==null? Text("Image not Picked"):Image.file(File(file!.path),fit: BoxFit.cover,)),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print("Image Picked");
                print(photo!.path);
              },
              child: Text(
                'Pick Image',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile> photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print("Images Picked");
                for(int i=0; i<files!.length;i++){
                  print(files![i].path);
                }
              },
              child: Text(
                'Pick Images',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
