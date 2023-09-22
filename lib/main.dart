import 'package:erp2_app/screens/course_list.dart';
import 'package:flutter/material.dart';
import 'package:erp2_app/screens/welcome.dart';
import 'package:erp2_app/screens/dashboard.dart';
import 'package:erp2_app/screens/search.dart';
import 'package:erp2_app/screens/search_results.dart';
import 'package:erp2_app/screens/course_details_screen.dart';
import 'package:erp2_app/models/my_courses.dart';
import 'package:erp2_app/models/cs_courses.dart';
import 'package:erp2_app/models/course.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: Welcome(),
    );
  }
}
