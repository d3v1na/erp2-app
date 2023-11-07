import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  final List<String> selectedInterests; // Define the parameter

  // Constructor that initializes selectedInterests
  CourseDetailsPage({required this.selectedInterests});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Now you can access selectedInterests in this widget
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff545F71),
        toolbarHeight: height * 0.1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Course Recommendation",
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: 
        SingleChildScrollView(
          child: Row(
            
            children: [
              SizedBox(width: width*.025,),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*.01,),
                  if (selectedInterests.contains("CSE")) ...[
                    Text("CSE:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                buildCourseCard(
                  course: "CSD204: Operating Systems",
                  instructor: "Sheel Manohar",
                  timings: "10 to 11AM",
                  days: "T/Th",
                  height: height,
                  width: width,
                ),
                buildCourseCard(
                  course: "CSD651: Computer Networks",
                  instructor: "Sourabh Shigwan",
                  timings: "2 to 3PM",
                  days: "M/W/f",
                  height: height,
                  width: width,
                ),
                buildCourseCard(
            course: "CSD301: Software Engineering",
            instructor: "John Smith",
            timings: "1 to 2PM",
            days: "M/W/F",
            height: height,
            width: width,
          ),
          buildCourseCard(
            course: "CSD401: Artificial Intelligence",
            instructor: "Alice Johnson",
            timings: "3 to 4PM",
            days: "T/Th",
            height: height,
            width: width,
          ),
              ],
              if (selectedInterests.contains("Physics")) ...[
                Text("Physics:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          buildCourseCard(
            course: "PHY101: Introduction to Physics",
            instructor: "Dr. Sarah Adams",
            timings: "9 to 10AM",
            days: "M/W/F",
            height: height,
            width: width,
          ),
          buildCourseCard(
            course: "PHY202: Quantum Mechanics",
            instructor: "Prof. James Wilson",
            timings: "2 to 3PM",
            days: "T/Th",
            height: height,
            width: width,
          ),
          buildCourseCard(
            course: "PHY303: Electromagnetic Theory",
            instructor: "Dr. Emily Brown",
            timings: "11 to 12AM",
            days: "M/W/F",
            height: height,
            width: width,
          ),
          buildCourseCard(
            course: "PHY404: Thermodynamics",
            instructor: "Prof. Robert Johnson",
            timings: "3 to 4PM",
            days: "T/Th",
            height: height,
            width: width,
          ),
        ],
        if (selectedInterests.contains("ECE")) ...[
                Text("ECE:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  buildCourseCard(
    course: "ECE101: Introduction to Electrical Engineering",
    instructor: "Dr. Jennifer Smith",
    timings: "9 to 10AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "ECE202: Digital Electronics",
    instructor: "Prof. David Johnson",
    timings: "2 to 3PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "ECE303: Signals and Systems",
    instructor: "Dr. Emily Davis",
    timings: "11 to 12AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "ECE404: VLSI Design",
    instructor: "Prof. Robert Wilson",
    timings: "3 to 4PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
],
if (selectedInterests.contains("Mechanical")) ...[
                Text("Mechanical:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  
  buildCourseCard(
    course: "MEC202: Thermodynamics",
    instructor: "Prof. Alice Smith",
    timings: "2 to 3PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "MEC303: Machine Design",
    instructor: "Dr. Robert Davis",
    timings: "11 to 12AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "MEC404: Fluid Mechanics",
    instructor: "Prof. Jennifer Wilson",
    timings: "3 to 4PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
],
if (selectedInterests.contains("Management")) ...[
                Text("Management:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  buildCourseCard(
    course: "MGT101: Introduction to Management",
    instructor: "Dr. Laura Smith",
    timings: "9 to 10AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "MGT202: Marketing Strategies",
    instructor: "Prof. David Wilson",
    timings: "2 to 3PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "MGT303: Financial Management",
    instructor: "Dr. Alice Davis",
    timings: "11 to 12AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "MGT404: Human Resource Management",
    instructor: "Prof. Robert Johnson",
    timings: "3 to 4PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
],
if (selectedInterests.contains("History")) ...[
                Text("History:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  buildCourseCard(
    course: "HIS101: World History",
    instructor: "Dr. Elizabeth Adams",
    timings: "9 to 10AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "HIS202: American History",
    instructor: "Prof. John Wilson",
    timings: "2 to 3PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "HIS303: European History",
    instructor: "Dr. Maria Davis",
    timings: "11 to 12AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "HIS404: Ancient Civilizations",
    instructor: "Prof. Robert Johnson",
    timings: "3 to 4PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
],
if (selectedInterests.contains("Sociology")) ...[
                Text("Sociology:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  buildCourseCard(
    course: "SOC101: Introduction to Sociology",
    instructor: "Dr. Sarah Smith",
    timings: "9 to 10AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "SOC202: Social Psychology",
    instructor: "Prof. David Davis",
    timings: "2 to 3PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "SOC303: Gender Studies",
    instructor: "Dr. Emily Wilson",
    timings: "11 to 12AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "SOC404: Cultural Anthropology",
    instructor: "Prof. Alice Johnson",
    timings: "3 to 4PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
],
if (selectedInterests.contains("Communication")) ...[
                Text("Communication:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  buildCourseCard(
    course: "COM101: Introduction to Comm",
    instructor: "Dr. Laura Adams",
    timings: "9 to 10AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "COM202: Public Speaking",
    instructor: "Prof. James Wilson",
    timings: "2 to 3PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "COM303: Mass Media and Society",
    instructor: "Dr. Maria Davis",
    timings: "11 to 12AM",
    days: "M/W/F",
    height: height,
    width: width,
  ),
  buildCourseCard(
    course: "COM404: Interpersonal Communication",
    instructor: "Prof. Robert Johnson",
    timings: "3 to 4PM",
    days: "T/Th",
    height: height,
    width: width,
  ),
],


        
              ],
              ),
            ],
          ),
        ),
      )
  ;
  }
}
Widget buildCourseCard({
  required String course,
  required String instructor,
  required String timings,
  required String days,
  required double height,
  required double width,
}) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.008, 0, height * 0.008),
      height: height * 0.12,
      width: width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(height * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            course,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          Text(instructor),
          SizedBox(height: height * 0.008),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(timings),
              Text(days)
            ],
          ),
        ],
      ),
    ),
  );
}