import 'package:flutter/material.dart';

class Grades extends StatefulWidget {
  const Grades({Key? key}) : super(key: key);

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  String subjectValue = 'Select Term';
  String courseCareerValue = 'Select Course Career';
  String courseAttributeValue = 'Select Course Attribute';
  String attributeValueValue = 'Select Attribute Value';
  bool openClassesOnlyValue = false;
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
          "Enroll - Grades",
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
          // container for subject with dropdown
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
                  value: subjectValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      // dropdownValue = newValue!;
                      subjectValue = newValue!;
                      
                    });
                  },
                  items: <String>['Select Term', 'Monsoon 2021', 'Spring 2022', 'Monsoon 2022', 'Spring 2023']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: const Color(0xff545F71))),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          
          
          SizedBox(height: height * 0.02),
          Row(
            //clear and Grades buttons
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Handle button click here
                  },
                  child: Text(
                    "Clear",
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
              ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text(
                    "Grades",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(168, 48),
                    primary: Color.fromARGB(255, 84, 95, 113),
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

        ]),
      ),
    );
  }
}
