import 'dart:io';

import 'package:dani/InputImage.dart';
import 'package:dani/service.dart';
import 'package:flutter/material.dart';

import 'crop_monitoring_ui/maize_and_wheat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Monitoring App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MaizeAndWheatPage(),
    );
  }
}
