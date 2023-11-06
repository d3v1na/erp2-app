import 'package:erp2_app/models/course.dart';
import 'package:erp2_app/screens/enrolled_course_details.dart';
import 'package:flutter/material.dart';
import 'package:erp2_app/models/my_courses.dart';
import 'package:erp2_app/screens/course_details_screen.dart';
import 'package:erp2_app/screens/search.dart';
import 'menu.dart';
import 'enrolled_course_details.dart';

class SwapRequests extends StatefulWidget {
  const SwapRequests({Key? key}) : super(key: key);

  @override
  _SwapRequestsState createState() => _SwapRequestsState();
}

class _SwapRequestsState extends State<SwapRequests> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff545F71),
        toolbarHeight: height * 0.1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Swap Requests",
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      endDrawer: MenuScreen(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // My Courses heading
            Text(
              "My Swap Requests",
              style: TextStyle(
                color: const Color(0xff545F71),
                fontSize: width * 0.05,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: height * 0.02),
            Card(
              child: Padding(
                
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // course code
                        Container(
                          width: 200,
                          child: Text(
                            "CSD206 (Introduction to Algorithms)",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff545F71),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        // course name
                        Container(
                          width: 200,
                          child: Text(
                          "Swap with CSD311 (Artificial Intelligence)",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff545F71),
                          ),
                        ),
                        ),
                        
                        SizedBox(height: height * 0.01),
                        // course time
                        Text(
                          "from ds192",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff545F71),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
