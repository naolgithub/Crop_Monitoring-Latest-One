import 'dart:io';

import 'package:dani/InputImage.dart';
import 'package:dani/service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

XFile? filei;

void _setImage(XFile image) {
  filei = image;
  print("_formData_formData_formData${filei}");
}

var imageResponse = "";

bool loading = false;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: InputImage(_setImage),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: 200,
          child: ElevatedButton(
              onPressed: () async {
                setState(() {
                  loading = true;
                });
                if (filei != null) {
                  var result = await UploadIamgeToModel(filei!);
                  setState(() {
                    imageResponse = result.toString();
                    loading = false;
                  });
                }
              },
              child: Text("Send")),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: loading
              ? Transform.scale(
                  scale: 0.5, child: const CircularProgressIndicator())
              : Text("Result : $imageResponse"),
        )
      ],
    );
  }
}
