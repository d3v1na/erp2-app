import 'package:flutter/material.dart';

import 'course.dart';

  List<Course> myCourses = [
    Course(
      name: "Chemistry in Everyday Life",
      instructor: "Naiwrit Karmodak",
      credits: "1.50",
      code: "CCC\n470",
    ),
    Course(
      name: "Data Mining and Warehousing",
      instructor: "Dolly Sharma",
      credits: "4.00",
      code: "CSD\n455",
    ),
    Course(
      name: "Introduction to Computer Science",
      instructor: "Harish Karnick",
      credits: "3.00",
      code: "CSD\n101",
    ),
    Course(
      name: "Artificial Intelligence",
      instructor: "Snehasis Mukherjee",
      credits: "4.00",
      code: "CSD\n317",
    ),
  ];

  List<Course> get courses => myCourses;
  

