import 'dart:io';

import 'package:flutter/material.dart';

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<example> {
  File? _image;
  PickedFile? _pickedFile;
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _pickImage() async {
    var gallery;
    //_pickedFile=
    //await _picker.getImage(source: ImageSource.gallery);
    if (_pickedFile != null) {
      setState(() {
        _image = File(_pickedFile!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Upload'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(children: [
              Center(
                child: GestureDetector(
                  child: const Text('Select An Image'),
                  //onPressed: _openImagePicker,
                  //onTap:()=> Get.find<ImageController>().pickImage(),
                  onTap: () => _pickImage(),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: _pickedFile != null
                    ? Image.file(
                        File(_pickedFile!.path),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : const Text('Please select an image'),
              )
            ]),
          ),
        ));
  }
}

class ImageSource {}

class ImagePicker {}

class PickedFile {
  String get path => path;
}
