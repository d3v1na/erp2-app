import 'package:flutter/material.dart';

class DatePickerContainer extends StatefulWidget {
  @override
  _DatePickerContainerState createState() => _DatePickerContainerState();
}

class _DatePickerContainerState extends State<DatePickerContainer> {
  DateTime _selectedDate = DateTime.now();
  int _selectedCourseIndex = 0; // Index of the selected course
  List<String> courses = [
    "Course 1",
    "Course 2",
    "Course 3",
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        updateSelectedCourse(); // Update the selected course
      });
    }
  }

  void _selectPreviousDate() {
    setState(() {
      _selectedDate = _selectedDate.subtract(Duration(days: 1));
      updateSelectedCourse(); // Update the selected course
    });
  }

  void _selectNextDate() {
    setState(() {
      _selectedDate = _selectedDate.add(Duration(days: 1));
      updateSelectedCourse(); // Update the selected course
    });
  }

  void updateSelectedCourse() {
    // Implement logic to determine the selected course based on the selected date
    // For example, you can use the _selectedDate to calculate the index.
    int newIndex = _selectedDate.day % courses.length;
    setState(() {
      _selectedCourseIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () => _selectDate(context),
      child: Container(
        height: height * 0.08,
        width: width * 0.95,
        padding: EdgeInsets.all(width * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: _selectPreviousDate,
              icon: Icon(Icons.arrow_left),
            ),
            Text(
              '${_selectedDate.toLocal()}'.split(' ')[0],
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            IconButton(
              onPressed: _selectNextDate,
              icon: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date Picker Container Example'),
        ),
        body: Center(
          child: DatePickerContainer(),
        ),
      ),
    ));
