import 'package:flutter/material.dart';
import 'package:erp2_app/screens/lecture_page.dart';
import 'package:erp2_app/screens/practical_page.dart';

class CouseView extends StatefulWidget {
  const CouseView({super.key});

  @override
  State<CouseView> createState() => _CouseViewState();
}

class _CouseViewState extends State<CouseView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff545F71),
          toolbarHeight: height * 0.1,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Course-wise Attendance",
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.05,
              fontWeight: FontWeight.w700,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Lectures'),
              Tab(text: 'Practicals'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: LecturePage(),
            ),
            Center(
              child: PracticalPage(),
            ),
          ],
        ),
      ),
    );
  }
}
