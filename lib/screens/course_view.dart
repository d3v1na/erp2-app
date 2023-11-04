import 'package:flutter/material.dart';
import 'package:erp2_app/screens/lecture_page.dart';
import 'package:erp2_app/screens/practical_page.dart';

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
        RoundedCourseItem(courseName: "Artificial Intelligence (CSD311)"),
        RoundedCourseItem(courseName: "Artificial Intelligence (CSD311)"),
        // Add more RoundedCourseItem widgets for additional courses
      ],
    );
  }
}

class RoundedCourseItem extends StatefulWidget {
  final String courseName;

  RoundedCourseItem({required this.courseName});

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
                fontSize: 18.0, // You can adjust the font size as needed
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            trailing: IconButton(
              icon: Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: toggleExpansion,
            ),
          ),
          if (_isExpanded)
            const ListTile(
              title: Text("Snehasis Mukherjee",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Color(0xffb545F71))),
            ),
          if (_isExpanded)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.04),
                InkWell(
                  onTap: () {
                    // Navigate to LecturesPage when the "Lectures" container is tapped
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LecturePage()));
                  },
                  child: Container(
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
                            // mainAxisAlignment: MainAxisAlignment.center,
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
                        // SizedBox(
                        //   height: height * 0.001,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _buildCircleWithText(
                                width, height, "3", Color(0xffb83CC93)),
                            SizedBox(width: width * 0.01),
                            _buildCircleWithText(
                                width, height, "9", Color(0xffbFF5E5E)),
                            SizedBox(width: width * 0.01),
                            _buildCircleWithText(
                                width, height, "1", Color(0xffb5EBBFF)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.03),
                InkWell(
                  onTap: () {
                    // Navigate to PracticalsPage when the "Practicals" container is tapped
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PracticalPage()));
                  },
                  child: Container(
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
                            // mainAxisAlignment: MainAxisAlignment.center,
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
                        // SizedBox(
                        //   height: height * 0.001,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _buildCircleWithText(
                                width, height, "3", Color(0xffb83CC93)),
                            SizedBox(width: width * 0.01),
                            _buildCircleWithText(
                                width, height, "9", Color(0xffbFF5E5E)),
                            SizedBox(width: width * 0.01),
                            _buildCircleWithText(
                                width, height, "1", Color(0xffb5EBBFF)),
                          ],
                        ),
                      ],
                    ),
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
    double width, double height, String text, Color circleColor) {
  return Column(
    children: <Widget>[
      Container(
        width: width * 0.1,
        height: height * 0.1,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor, // Set the custom color for the circle
        ),
        child: Center(
          child: Text(
            text,
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
