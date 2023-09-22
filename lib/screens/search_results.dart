import 'package:erp2_app/screens/course_details_screen.dart';
import "package:flutter/material.dart";
import 'package:erp2_app/models/cs_courses.dart';
import 'package:erp2_app/models/course.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  String selectedSortOption = 'Course Name';
  List<String> sortOptions = ['Course Name', 'Instructor', 'Credits'];

  // Function to sort courses based on the selected sorting option
  void _sortCoursesBy(String sortOption) {
    setState(() {
      selectedSortOption = sortOption;
      courses.sort((a, b) {
        if (sortOption == 'Course Name') {
          return a.name.compareTo(b.name);
        } else if (sortOption == 'Instructor') {
          return a.instructor.compareTo(b.instructor);
        } else if (sortOption == 'Credits') {
          // Convert credits to double for proper sorting
          double creditsA = double.parse(a.credits);
          double creditsB = double.parse(b.credits);
          return creditsA.compareTo(creditsB);
        }
        return 0; // Default case
      });
    });
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
          "Enroll - Search Results",
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
            //number of search results
            Text(
              "${courses.length} results found",
              style: TextStyle(
                color: const Color(0xff545F71),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            // "Sort by" text
            Row(
              children: [
                const Text(
                  "Sort by ",
                  style: TextStyle(
                    color: Color(0xff545F71),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // Sorting dropdown menu
                DropdownButton<String>(
                  style: TextStyle(
                    color: const Color(0xff545F71),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  value: selectedSortOption,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      _sortCoursesBy(newValue);
                    }
                  },
                  items: sortOptions.map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                ),
              ],
            ),

            SizedBox(height: height * 0.02),
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  Course course = courses[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  CourseDetailsScreen(),
                      ),
                    );
                      
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      elevation: 2,
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        leading: CircleAvatar(
                            backgroundColor: const Color(0xff545F71),
                            radius: 24,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                course.code,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        title: Text(
                          course.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff545F71),
                          ),
                        ),
                        subtitle: Text(
                          course.instructor,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff545F71),
                          ),
                        ),
                        trailing: Text(course.credits),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
