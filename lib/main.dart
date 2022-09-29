import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdf/screen/controller_screen_device.dart';
import 'package:flutter_pdf/screen/phoneApp/pdfscreen_phone.dart';
import 'package:window_size/window_size.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('រៀនCode បែកស្លុយ');
    setWindowMinSize(const Size(400, 720));
    setWindowMaxSize(Size.infinite);
  }
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
