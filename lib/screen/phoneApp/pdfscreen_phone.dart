import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdf/data/course_assetfile.dart';
import 'package:flutter_pdf/model/Lesson_model.dart';
import 'package:flutter_pdf/screen/phoneApp/course_pagescreen.dart';
import 'package:flutter_pdf/widgets/button_widget.dart';
import 'package:flutter_pdf/widgets/cours_widget.dart';
import 'package:flutter_pdf/widgets/pdfview_apge.dart';

import '../../controller/pdf_controller.dart';

class PDFScreenPhone extends StatefulWidget {
  @override
  _PDFScreenPhoneState createState() => _PDFScreenPhoneState();
}

class _PDFScreenPhoneState extends State<PDFScreenPhone> {
  List<LessonModel> lessons = [];
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Learn EveryWhere",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 19.0,
                fontWeight: FontWeight.w700),
          ),
          elevation: 0.0,
        ),
        body: SizedBox(
          height: double.infinity,
          child: ListView.builder(
            itemCount: listCours.length,
            itemBuilder: (context, index) {
              var course = listCours[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CoursePageScreenPhone(
                        courseModel: course,
                      );
                    },
                  ));
                },
                child: CourseWidget(
                  courseModel: course,
                ),
              );
            },
          ),
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );
}
