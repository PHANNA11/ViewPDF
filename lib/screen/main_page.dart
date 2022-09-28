import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdf/screen/menu_page.dart';
import 'package:flutter_pdf/widgets/button_widget.dart';

import '../controller/pdf_controller.dart';

class PDFScreen extends StatefulWidget {
  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "PDF Viewer",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 19.0,
                fontWeight: FontWeight.w700),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  text: 'Asset PDF',
                  onClicked: () async {
                    final path = 'assets/file/Dart programming.pdf';
                    final file = await PDFApi.loadAsset(path);
                    openPDF(context, file);
                  },
                  color: Colors.blueAccent,
                ),
                // const SizedBox(height: 16),
                // ButtonWidget(
                //   text: 'File PDF',
                //   onClicked: () async {
                //     final file = await PDFApi.pickFile();

                //     if (file == null) return;
                //     openPDF(context, file);
                //   },
                // ),
                const SizedBox(height: 16),
                ButtonWidget(
                  text: 'Network PDF',
                  onClicked: () async {
                    final url =
                        'https://www.unf.edu/~wkloster/2220/ppts/cprogramming_tutorial.pdf';
                    final file = await PDFApi.loadNetwork(url);
                    openPDF(context, file);
                  },
                  color: Colors.amber,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );
}
