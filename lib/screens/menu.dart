import 'package:erp2_app/screens/course_list.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'grades.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff545F71), // Change the background color
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(height: 20), // Increase space between lines
            ListTile(
              title: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 20,// Change text color to white
                  fontWeight: FontWeight.w700
                ),
              ),
              onTap: () {
                // Handle menu item 1 click
              },
            ),
            SizedBox(height: 20), // Increase space between lines
            ListTile(
              title: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16,// Change text color to white
                  fontWeight: FontWeight.w700
                ),
              ),
              onTap: () {
                // Handle menu item 1 click
                Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  dashboard(),
                      ),
                    );
              },
            ),
            SizedBox(height: 20), // Increase space between lines
            ListTile(
              title: Text(
                'Class Schedule',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16// Change text color to white
                ),
              ),
              onTap: () {
                // Handle menu item 2 click
                
              },
            ),
            SizedBox(height: 20), // Increase space between lines
            ListTile(
              title: Text(
                'Courses',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16// Change text color to white
                ),
              ),
              onTap: () {
                // Handle menu item 2 click
                Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  CourseList(),
                      ),
                    );
              },
            ),
            SizedBox(height: 20), // Increase space between lines
            ListTile(
              title: Text(
                'My Attendance',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16// Change text color to white
                ),
              ),
              onTap: () {
                // Handle menu item 2 click
                
              },
            ),
            SizedBox(height: 20), // Increase space between lines
            ListTile(
              title: Text(
                'My Grades',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16// Change text color to white
                ),
              ),
              onTap: () {
                // Handle menu item 2 click
                Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  Grades(),
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
