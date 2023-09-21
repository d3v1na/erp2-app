import 'package:flutter/material.dart';

import 'course.dart';

List<Course> myCourses = [
  Course(
    name: "Artificial Intelligence",
    instructor: "Snehasis Mukherjee",
    credits: "4.00",
    code: "CSD\n311",
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
    name: "Operating Systems",
    instructor: "Sheel Manohar",
    credits: "4.00",
    code: "CSD\n217",
  ),
  Course(
    name: "Design and Analysis of Algorithms",
    instructor: "Sandeep Sen",
    credits: "4.00",
    code: "CSD\n319",
  ),
  Course(
    name: "Object Oriented Programming",
    instructor: "Pooja Malik",
    credits: "4.00",
    code: "CSD\n211",
  ),
  Course(
    name: "Introduction to Database Systems",
    instructor: "Sonia Kheterpaul",
    credits: "4.00",
    code: "CSD\n317",
  ),
  Course(
    name: "Foundations of Information Security",
    instructor: "Pooja Malik",
    credits: "2.00",
    code: "CSD\n221",
  ),
  Course(
    name: "Object Oriented Programming",
    instructor: "Pooja Malik",
    credits: "4.00",
    code: "CSD211",
  ),
  Course(
    name: "Object Oriented Programming",
    instructor: "Pooja Malik",
    credits: "4.00",
    code: "CSD211",
  ),
  Course(
    name: "Object Oriented Programming",
    instructor: "Pooja Malik",
    credits: "4.00",
    code: "CSD211",
  ),
  Course(
    name: "Logical and Functional Programming",
    instructor: "Harish Karnick",
    credits: "3.00",
    code: "CSD213",
  ),
];

List<Course> get courses => myCourses;
