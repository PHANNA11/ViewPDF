import 'package:flutter/material.dart';

import 'package:flutter_pdf/model/course_model.dart';
import 'package:flutter_pdf/widgets/empty_widget.dart';
import 'package:flutter_pdf/widgets/lesson_widget.dart';

class CoursePageScreenPhone extends StatelessWidget {
  CoursePageScreenPhone({Key? key, required this.courseModel})
      : super(key: key);
  CourseModel courseModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(courseModel.coursName!),
      ),
      body: courseModel.listLessonModel.isNotEmpty
          ? ListView.builder(
              itemCount: courseModel.listLessonModel.length,
              itemBuilder: (context, index) {
                var lesson = courseModel.listLessonModel[index];
                return LessonWidget(lessonModel: lesson);
              },
            )
          : const EmptyWidget(),
    );
  }
}
