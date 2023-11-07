import 'package:erp2_app/screens/interest_recc.dart';
import 'package:flutter/material.dart';
import 'course_list.dart';
import 'grades.dart';
import 'menu.dart';
import 'attendance.dart';
import 'timetable.dart';

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
    ElevatedButton buildElevatedButton(
        BuildContext context, String text, String imagePath, Widget screen) {
      return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Background color
          foregroundColor: const Color(0xff545F71), // Text color
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath,
                  height: MediaQuery.of(context).size.height * 0.07),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
      ),
      endDrawer: MenuScreen(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(context, "TimeTable",
                    'assets/timetable.png', const TimeTable()),
                SizedBox(width: width * 0.05),
                buildElevatedButton(context, "Courses", 'assets/courses.png',
                    const CourseList()),
              ],
            ),
            SizedBox(height: height * 0.023),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(context, "Attendance",
                    'assets/attendance.png', const Attendance()),
                SizedBox(width: width * 0.05),
                buildElevatedButton(
                    context, "Grades", 'assets/grades.png', const Grades()),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to the course details page and pass the selectedInterests as arguments
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InterestSelectionPage(),
            ),
          );
        },
       backgroundColor: const Color(0xff545F71) ,
        label: Text("Recommend Courses?"),
        // icon: Icon(Icons.save),
      ),
    );
  }
}
