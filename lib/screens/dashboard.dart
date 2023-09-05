import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ElevatedButton buildElevatedButton(String text, String imagePath) {
      return ElevatedButton(
        onPressed: () {
          // Add your button's functionality here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Background color
          foregroundColor: const Color(0xff545F71), // Text color
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: const Color(0xff545F71),
              width: width * 0.004,
            ),
          ),
        ),
        child: Container(
          width: width * 0.4,
          height: height * 0.2,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: height * 0.07),
              SizedBox(height: height * 0.01),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff545F71),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff545F71),
        toolbarHeight: height * 0.1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/notes.png',
            height: height * 0.5,
          ),
          onPressed: () {
            // Handle icon button click here
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton("TimeTable", 'assets/timetable.png'),
                SizedBox(width: width * 0.05),
                buildElevatedButton("Courses", 'assets/courses.png'),
              ],
            ),
            SizedBox(height: height * 0.023),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton("Attendance", 'assets/attendance.png'),
                SizedBox(width: width * 0.05),
                buildElevatedButton("Grades", 'assets/grades.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
