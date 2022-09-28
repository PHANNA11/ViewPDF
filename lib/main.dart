import 'package:flutter/material.dart';
import 'package:flutter_pdf/screen/controller_screen_device.dart';
import 'package:flutter_pdf/screen/phoneApp/pdfscreen_phone.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenDevice(),
    );
  }
}
