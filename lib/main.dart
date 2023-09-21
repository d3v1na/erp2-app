import 'package:erp2_app/screens/course_list.dart';
import 'package:flutter/material.dart';
import 'package:erp2_app/screens/welcome.dart';
import 'package:erp2_app/screens/dashboard.dart';
import 'package:erp2_app/screens/search.dart';
import 'package:erp2_app/screens/search_results.dart';

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
      home: const SearchResults(),
    );
  }
}
