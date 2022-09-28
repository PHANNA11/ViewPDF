import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pdf/screen/IpadApp/pdfscreenIpad.dart';
import 'package:flutter_pdf/screen/phoneApp/pdfscreen_phone.dart';

double phoneScreenSize = 500;
double ipadScreenSize = 1200;

class ScreenDevice extends StatefulWidget {
  const ScreenDevice({Key? key}) : super(key: key);

  @override
  State<ScreenDevice> createState() => _ScreenDeviceState();
}

class _ScreenDeviceState extends State<ScreenDevice> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 0 &&
            MediaQuery.of(context).size.width <= phoneScreenSize
        ? PDFScreenPhone()
        : MediaQuery.of(context).size.width > phoneScreenSize &&
                MediaQuery.of(context).size.width < 900 &&
                MediaQuery.of(context).orientation == Orientation.portrait
            ? PDFScreenPhone()
            : const PDFScreenIpad();
  }
}
