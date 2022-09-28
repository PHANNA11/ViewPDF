import 'package:flutter_pdf/model/Lesson_model.dart';

String imagePathMain = "assets/images";
String pdfPathMain = "assets/file";
List<LessonModel> listLesson = [
  LessonModel(
      lessonName: 'Dart Programming',
      image: '$imagePathMain/dartIcon.png',
      pdfpath: '$pdfPathMain/Dart programming.pdf'),
  LessonModel(
      lessonName: 'Flutter Setup',
      image: '$imagePathMain/Flutter-setup.png',
      pdfpath: '$pdfPathMain/Flutter setup and Installation.pdf'),
  LessonModel(
      lessonName: 'Widget & MaterialApp',
      image: '$imagePathMain/flutterlogo.png',
      pdfpath: '$pdfPathMain/I.Widget & MaterialApp.pdf'),
  LessonModel(
      lessonName: 'Local Storage',
      image: '$imagePathMain/LCC-.png',
      pdfpath: '$pdfPathMain/II.Local Storage.pdf'),
  LessonModel(
      lessonName: 'State Management',
      image: '$imagePathMain/statemanagement.png',
      pdfpath: '$pdfPathMain/III.StateManagement.pdf'),
];
