import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdf/controller/pdf_controller.dart';
import 'package:flutter_pdf/model/Lesson_model.dart';
import 'package:flutter_pdf/screen/controller_screen_device.dart';
import 'package:flutter_pdf/widgets/pdfview_apge.dart';

class LessonWidget extends StatelessWidget {
  LessonWidget({Key? key, required this.lessonModel}) : super(key: key);
  LessonModel lessonModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final path = lessonModel.pdfpath;
        final file = await PDFApi.loadAsset(path!);
        openPDF(context, file);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 221, 231, 248),
              Color.fromARGB(255, 214, 243, 240),
              Color.fromARGB(255, 245, 229, 229),
              Color.fromARGB(255, 234, 234, 215),
            ]),
            border: Border.all(
              width: 2,
              color: Colors.blueAccent,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(lessonModel.image!),
                ),
              ),
            ),
            Text(
              lessonModel.lessonName!,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 0 &&
                          MediaQuery.of(context).size.width <=
                              phoneScreenSize &&
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                      ? 25
                      : MediaQuery.of(context).size.width > phoneScreenSize &&
                              MediaQuery.of(context).size.width < 900 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                          ? 22
                          : 28),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );
}
