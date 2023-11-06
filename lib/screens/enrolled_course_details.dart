import 'package:erp2_app/screens/course_list.dart';
import 'package:erp2_app/screens/swap.dart';
import 'package:flutter/material.dart';
import 'package:erp2_app/models/course.dart';
import 'package:erp2_app/models/course.dart'; // Import the necessary course model
import 'menu.dart';



class EnrolledCourseDetails extends StatelessWidget {

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
          "CSD311",
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
          children: <Widget>[
            Text(
              'Artificial Intelligence',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xff545F71),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Timings:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff545F71),
                    )),
                Text(" TTh 11:00 - 12:30",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71),
                    ))
              ],
            ),

            Row(
              children: [
                Text("Instructor:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff545F71),
                    )),
                Text(" Snehasis Mukherjee",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71),
                    ))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Credits:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff545F71),
                    )),
                Text(" 4.00",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71),
                    ))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Session:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff545F71),
                    )),
                Text(" Regular Academic Session",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71),
                    ))
              ],
            ),

            Row(
              children: [
                Text("Career:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff545F71),
                    )),
                Text(" Undergraduate",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71),
                    ))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Prerequisites:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff545F71),
                    )),
                Text(" CSD101/CSD201",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71),
                    ))
              ],
            ),
            SizedBox(height: 10),

            Text(
                "This course aims to introduce students to the basic concepts of Artificial Intelligence. The course will cover the following topics: 1. Introduction to AI 2. Intelligent Agents 3. Solving Problems by Searching 4. Informed Search and Exploration 5. Constraint Satisfaction Problems 6. Adversarial Search 7. Logical Agents 8. First Order Logic 9. Inference in First Order Logic 10. Knowledge Representation 11. Planning 12. Planning and Acting in the Real World 13. Uncertainty 14. Probabilistic Reasoning 15. Probabilistic Reasoning over Time 16. Making Simple Decisions 17. Making Complex Decisions 18. Learning from Observations 19. Learning with Neural Networks 20. Reinforcement Learning 21. Natural Language Processing 22. Natural Language for Communication 23. Perception 24. Robotics 25. Philosophical Foundations of AI",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff545F71),
                )),
            SizedBox(height: 200),

            Row(
              // 2 buttons
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button 1 for enroll
                

                //button 2 for drop
                ElevatedButton(
                  onPressed: () {
                    // Handle button click here
                  },
                  child: Text(
                    "Drop",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(168, 48),
                    primary: Color.fromARGB(153, 84, 95, 113),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 13,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),

                //button 3 for swap
                ElevatedButton(
                  onPressed: () {
                    // Handle button click here
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Swap(),
                      ),
                    );
                  },
                  child: Text(
                    "Swap",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(168, 48),
                    primary: Color.fromARGB(153, 84, 95, 113),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 13,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            )

            // Add more course details here as needed
          ],
        ),
      ),
    );
  }
}
