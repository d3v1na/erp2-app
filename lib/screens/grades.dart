import 'package:flutter/material.dart';

class Grades extends StatefulWidget {
  const Grades({Key? key}) : super(key: key);

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  String termValue = 'Select Term';

  // Map to associate terms with subjects and grades
  Map<String, List<Map<String, dynamic>>> termData = {
    'Select Term': [],
    'Monsoon 2021': [
      {"Course Code": "MED201", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "CSD101", "Credits": "4.00", "Grade": "B"},
      {"Course Code": "PHY102", "Credits": "4.00", "Grade": "A-"},
      {"Course Code": "MAT103", "Credits": "4.00", "Grade": "A-"},
    ],
    'Spring 2022': [
      {"Course Code": "CCC407", "Credits": "1.50", "Grade": "B"},
      {"Course Code": "CSD112", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "MAT104", "Credits": "3.00", "Grade": "A"},
      {"Course Code": "PHY105", "Credits": "4.00", "Grade": "A"},
    ],
    'Monsoon 2022': [
      {"Course Code": "CSD202", "Credits": "4.00", "Grade": "A-"},
      {"Course Code": "CSD210", "Credits": "5.00", "Grade": "B-"},
      {"Course Code": "MAT201", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "PHY202", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "CSD203", "Credits": "4.00", "Grade": "A"}
    ],
    'Spring 2023': [
      {"Course Code": "CSD211", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "CSD212", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "CSD213", "Credits": "4.00", "Grade": "A"},
      {"Course Code": "CSD214", "Credits": "4.00", "Grade": "A"},

    ],
  };

    // Function to show the course details in a popup
  void _showCourseDetails(String courseName, String instructor) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Course Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xff545F71),
                radius: 30,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'CSD\n 311',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                )),
              Text('Course Name: $courseName'),
              Text('Instructor: $instructor'),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(108, 48),
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
        );
      },
    );
  }

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
          "Grades",
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Term',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: const Color(0xff545F71)),
            ),
            SizedBox(height: height * 0.01),
            // Container for subject with dropdown
            Container(
              height: height * 0.05,
              width: 348,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xff545F71),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: termValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        termValue = newValue!;
                      });
                    },
                    items: termData.keys
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: const Color(0xff545F71)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02), // Add some spacing
            // Display the grades table for the selected term
            if (termValue != 'Select Term' && termData.containsKey(termValue))
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                columns: [
                  DataColumn(label: Text('Course Code')),
                  DataColumn(label: Text('Credits')),
                  DataColumn(label: Text('Grade')),
                  DataColumn(label: Container(padding: EdgeInsets.symmetric(horizontal: 1.0),)), 
                ],
                rows: termData[termValue]!
                    .map(
                      (data) => DataRow(
                        cells: [
                          
                          DataCell(Text(data['Course Code'].toString())),
                          DataCell(Text(data['Credits'].toString())),
                          DataCell(Text(data['Grade'].toString())),
                          DataCell(
                            IconButton(
                              icon: Icon(Icons.info),
                              //change the icon color here
                              color: const Color(0xff545F71),
                              //change size of clickable area
                              iconSize: 14.0,
                              alignment: Alignment.centerLeft,
                              
                              onPressed: () {
                                // Show course details popup
                                _showCourseDetails("Artificial Intelligence", "Snehasis Mukherjee");
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              )
              
          ],
        ),
      ),
    );
  }
}
