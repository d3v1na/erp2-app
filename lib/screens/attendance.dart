import 'package:erp2_app/screens/daily_view.dart';
import 'package:flutter/material.dart';
import 'package:erp2_app/screens/course_view.dart';
import 'menu.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
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
            "Attendance",
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.05,
              fontWeight: FontWeight.w700,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Daily View'),
              Tab(text: 'Course-wise View'),
            ],
          ),
        ),
        endDrawer: MenuScreen(),

        body: const TabBarView(
          children: [
            Center(
              child: DailyView(),
            ),
            Center(
              child: CourseView(),
            ),
          ],
        ),
      ),
    );
  }
}
