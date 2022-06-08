// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class InputImage extends StatefulWidget {
  final Function setImage;
  InputImage(this.setImage);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ImageInputState();
  }
}

class _ImageInputState extends State<InputImage> {
   XFile? _image;
  Future getImage(BuildContext context, ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: source, maxWidth: 400.0);

    setState(() {
      _image = image;
    });
    print("imageimageimageimage $image");
    widget.setImage(image);
    Navigator.of(context).pop();
  }

  void _openImagePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            height: 250.0,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                const Text(
                  'Pick an Image',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                TextButton(
                  child: const Text('Use Gallery'),
                  onPressed: () {
                    getImage(context, ImageSource.gallery);
                  },
                ),
                TextButton(
                  child: const Text('Use Camera'),
                  onPressed: () {
                    getImage(context, ImageSource.camera);
                  },
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
  
    return Row(
      children: <Widget>[
                    Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 30, left: 20),
                
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 25.0,
                      child: IconButton(
                        onPressed: () {
                          _openImagePicker(context);
                        },
                        icon:  Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child:  Stack(fit: StackFit.loose, children: <Widget>[
           _image != null
                ?  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Container(
                          width: 140.0,
                          height: 140.0,
                          decoration:  BoxDecoration(
                            image:  DecorationImage(
                              image:  FileImage(
                                      File(_image!.path.toString()),
                                    ),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ],
                  )
                : Container(),
          ]),
        ),

      ],
    );
  }
}
