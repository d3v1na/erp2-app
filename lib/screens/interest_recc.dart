import 'package:erp2_app/screens/course_suggest.dart';
import 'package:flutter/material.dart';

class InterestSelectionPage extends StatefulWidget {
  @override
  _InterestSelectionPageState createState() => _InterestSelectionPageState();
}

class _InterestSelectionPageState extends State<InterestSelectionPage> {
  List<String> selectedInterests = [];
  final List<String> interests = [
    "CSE",
    "ECE",
    "CIVIL",
    "Management",
    "History""Sociology""Communication"
    // Add more interests here
  ];

  void toggleInterest(String interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
      } else {
        selectedInterests.add(interest);
      }
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
          "Select your interests",
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: interests.length,
        itemBuilder: (context, index) {
          final interest = interests[index];
          final isSelected = selectedInterests.contains(interest);

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                interest,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Checkbox(
                value: isSelected,
                onChanged: (value) {
                  toggleInterest(interest);
                },
              ),
              tileColor: isSelected ? Colors.blue : Colors.white,
              selectedTileColor: Colors.blueAccent,
              dense: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to the course details page and pass the selectedInterests as arguments
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetailsPage(selectedInterests: selectedInterests),
            ),
          );
        },
        label: Text("Recommend"),
        // icon: Icon(Icons.save),
      ),
    );
  }
}
