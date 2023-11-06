import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  final List<String> selectedInterests; // Define the parameter

  // Constructor that initializes selectedInterests
  CourseDetailsPage({required this.selectedInterests});

  @override
  Widget build(BuildContext context) {
    // Now you can access selectedInterests in this widget
    return Scaffold(
      appBar: AppBar(
        title: Text("Course Details"),
      ),
      body: ListView.builder(
        itemCount: selectedInterests.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(selectedInterests[index]),
          );
        },
      ),
    );
  }
}
