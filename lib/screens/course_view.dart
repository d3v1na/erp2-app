import 'package:flutter/material.dart';

class AttendanceData {
  final int present;
  final int absent;
  final int medicalLeave;

  AttendanceData({
    required this.present,
    required this.absent,
    required this.medicalLeave,
  });
}

class RoundedCourseItem extends StatefulWidget {
  final String courseName;
  final String instructorName;
  final AttendanceData lectureAttendance;
  final AttendanceData practicalAttendance;

  RoundedCourseItem({
    required this.courseName,
    required this.instructorName,
    required this.lectureAttendance,
    required this.practicalAttendance,
  });

  @override
  _RoundedCourseItemState createState() => _RoundedCourseItemState();
}

class _RoundedCourseItemState extends State<RoundedCourseItem> {
  bool _isExpanded = false;

  void toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(
        width * 0.008,
        height * 0.008,
        height * 0.008,
        width * 0.008,
      ),
      // height: height * 0.12,
      // width: width * 0.95,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffb545F71), width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              widget.courseName,
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffb545F71)),
            ),
            trailing: IconButton(
              icon: Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: toggleExpansion,
            ),
          ),
          if (_isExpanded)
            ListTile(
              title: Text(
                widget.instructorName,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  color: Color(0xffb545F71),
                ),
              ),
            ),
          if (_isExpanded)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.04),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.02, height * 0.01, width * 0.02, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(height: height * 0.03),
                            Image.asset(
                              'assets/lecture.png',
                              height: 24.0,
                              width: 24.0,
                            ),
                            SizedBox(width: width * 0.01),
                            const Text(
                              "Lectures:",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  color: Color(0xffb545F71)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildCircleWithText(
                              width,
                              height,
                              widget.lectureAttendance.present,
                              Color(0xffb83CC93)),
                          SizedBox(width: width * 0.01),
                          _buildCircleWithText(
                              width,
                              height,
                              widget.lectureAttendance.absent,
                              Color(0xffbFF5E5E)),
                          SizedBox(width: width * 0.01),
                          _buildCircleWithText(
                              width,
                              height,
                              widget.lectureAttendance.medicalLeave,
                              Color(0xffb5EBBFF)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width * 0.03),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.02, height * 0.01, width * 0.02, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffb545F71), width: 1.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(height: height * 0.03),
                            Image.asset(
                              'assets/practical.png',
                              height: 24.0,
                              width: 24.0,
                            ),
                            SizedBox(width: width * 0.01),
                            const Text(
                              "Practicals:",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter',
                                color: Color(0xffb545F71),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildCircleWithText(
                              width,
                              height,
                              widget.practicalAttendance.present,
                              Color(0xffb83CC93)),
                          SizedBox(width: width * 0.01),
                          _buildCircleWithText(
                              width,
                              height,
                              widget.practicalAttendance.absent,
                              Color(0xffbFF5E5E)),
                          SizedBox(width: width * 0.01),
                          _buildCircleWithText(
                              width,
                              height,
                              widget.practicalAttendance.medicalLeave,
                              Color(0xffb5EBBFF)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          SizedBox(height: height * 0.015),
        ],
      ),
    );
  }
}

Widget _buildCircleWithText(
    double width, double height, int count, Color circleColor) {
  return Column(
    children: <Widget>[
      Container(
        width: width * 0.1,
        height: height * 0.1,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
        child: Center(
          child: Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Course View'),
          ),
          body: CourseView(),
        ),
      ),
    );

class CourseView extends StatefulWidget {
  const CourseView({Key? key});

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RoundedCourseItem(
          courseName: "Artificial Intelligence (CSD311)",
          instructorName: "Snehasis Mukherjee",
          lectureAttendance: AttendanceData(
            present: 19,
            absent: 10,
            medicalLeave: 1,
          ),
          practicalAttendance: AttendanceData(
            present: 5,
            absent: 1,
            medicalLeave: 0,
          ),
        ),
        RoundedCourseItem(
          courseName: "Design and Algorithms (CSD319)",
          instructorName: "Dolly Sharma",
          lectureAttendance: AttendanceData(
            present: 17,
            absent: 2,
            medicalLeave: 0,
          ),
          practicalAttendance: AttendanceData(
            present: 10,
            absent: 0,
            medicalLeave: 1,
          ),
        ),
        RoundedCourseItem(
          courseName: "Intro. to Database System (CSD317)",
          instructorName: "Sonia Khetrapaul",
          lectureAttendance: AttendanceData(
            present: 23,
            absent: 6,
            medicalLeave: 0,
          ),
          practicalAttendance: AttendanceData(
            present: 9,
            absent: 0,
            medicalLeave: 0,
          ),
        ),
        RoundedCourseItem(
          courseName: "Applied Cryptography (CSD451)",
          instructorName: "Sweta Mishra",
          lectureAttendance: AttendanceData(
            present: 12,
            absent: 5,
            medicalLeave: 0,
          ),
          practicalAttendance: AttendanceData(
            present: 5,
            absent: 2,
            medicalLeave: 0,
          ),
        ),
        // Add more RoundedCourseItem widgets for additional courses
      ],
    );
  }
}
