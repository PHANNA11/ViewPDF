import 'package:flutter_pdf/data/pdf_assetfile.dart';
import 'package:flutter_pdf/model/course_model.dart';

List<CourseModel> listCours = [
  CourseModel(
      coursName: 'C/C++ programming',
      courslogo: 'assets/images/cpplogo.png',
      listLessonModel: []),
  CourseModel(
      coursName: 'C# programming',
      courslogo: 'assets/images/cshaplogo.png',
      listLessonModel: []),
  CourseModel(
      coursName: 'Java programming',
      courslogo: 'assets/images/javalogo.png',
      listLessonModel: []),
  CourseModel(
      coursName: 'Flutter & Dart',
      courslogo: 'assets/images/flutterlogo.png',
      listLessonModel: listLesson),
  CourseModel(
      coursName: 'HTML/CSS/Bootrap/Js',
      courslogo: 'assets/images/web_frontend.png',
      listLessonModel: []),
];
