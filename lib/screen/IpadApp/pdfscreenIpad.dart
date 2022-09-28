import 'package:flutter/material.dart';
import 'package:flutter_pdf/data/course_assetfile.dart';
import 'package:flutter_pdf/model/Lesson_model.dart';
import 'package:flutter_pdf/screen/controller_screen_device.dart';
import 'package:flutter_pdf/widgets/cours_widget.dart';
import 'package:flutter_pdf/widgets/empty_widget.dart';
import 'package:flutter_pdf/widgets/lesson_widget.dart';

class PDFScreenIpad extends StatefulWidget {
  const PDFScreenIpad({Key? key}) : super(key: key);

  @override
  State<PDFScreenIpad> createState() => _PDFScreenIpadState();
}

class _PDFScreenIpadState extends State<PDFScreenIpad> {
  List<LessonModel> lessons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Learn EveryWhere",
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 19.0, fontWeight: FontWeight.w700),
        ),
        elevation: 0.0,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: double.infinity,
              child: ListView.builder(
                itemCount: listCours.length,
                itemBuilder: (context, index) {
                  var course = listCours[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        lessons = course.listLessonModel;
                        print(lessons);
                      });
                    },
                    child: CourseWidget(
                      courseModel: course,
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width * 0.001,
            color: Colors.grey,
          ),
          lessons.isNotEmpty
              ? Expanded(
                  flex: 3,
                  child: ListView.builder(
                      itemCount: lessons.length,
                      itemBuilder: (context, index) {
                        var lesson = lessons[index];
                        return LessonWidget(lessonModel: lesson);
                      }),
                )
              : const Expanded(flex: 2, child: EmptyWidget()),
        ],
      ),
    );
  }
}
