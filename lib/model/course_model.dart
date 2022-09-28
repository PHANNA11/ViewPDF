import 'package:flutter_pdf/model/Lesson_model.dart';

class CourseModel {
  String? coursName;
  String? courslogo;
  List<LessonModel> listLessonModel;
  CourseModel({this.coursName, this.courslogo, required this.listLessonModel});
}
