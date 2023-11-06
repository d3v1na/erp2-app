import 'package:flutter/material.dart';

class DailyView extends StatefulWidget {
  const DailyView({Key? key}) : super(key: key);

  @override
  State<DailyView> createState() => _DailyViewState();
}

class _DailyViewState extends State<DailyView> {
  final Map<DateTime, List<Course>> courseMap = {
    DateTime(2023, 11, 1): [
      Course(
        course: 'Intro. to Database System (CSD317 - LEC)',
        instructor: 'Sonia Khetrapaul',
        timings: '11:00:00 - 11:55:00',
        status: true,
      ),
      Course(
        course: 'Intro. to Database System (CSD317 - PRAC)',
        instructor: 'Sonia Khetrapaul',
        timings: '13:00:00 - 14:55:00',
        status: true,
      ),
    ],
    DateTime(2023, 11, 2): [
      Course(
        course: 'Artificial Intelligence (CSD311 - lec)',
        instructor: 'Snehasis Mukherjee',
        timings: '08:00:00 - 08:55:00',
        status: true,
      ),
      Course(
        course: 'Applied Cryptography (CSD451 - Lec)',
        instructor: 'Sweta Mishra',
        timings: '09:00:00 - 09:55:00',
        status: true,
      ),
      Course(
        course: 'Design and Analysis of Algorithms (CSD319 - Lec)',
        instructor: 'Snehasis Mukherjee',
        timings: '15:30:00 - 16:55:00',
        status: true,
      ),
    ],
    DateTime(2023, 11, 3): [
      Course(
        course: 'Artificial Intelligence (CSD311 - Lec)',
        instructor: 'Snehasis Mukherjee',
        timings: '08:00:00 - 08:55:00',
        status: true,
      ),
      Course(
        course: 'Intro. to Database System (CSD317 - LEC)',
        instructor: 'Sonia Khetrapaul',
        timings: '11:00:00 - 11:55:00',
        status: false,
      ),
      Course(
        course: 'Design and Analysis of Algorithms (CSD319 - Lec)',
        instructor: 'Dolly Sharma',
        timings: '15:30:00 - 16:55:00',
        status: true,
      ),
    ],
    DateTime(2023, 11, 6): [
      Course(
        course: 'Artificial Intelligence (CSD311 - Prac)',
        instructor: 'Snehasis Mukherjee',
        timings: '13:00:00 - 14:55:00',
        status: true,
      ),
      Course(
        course: 'Intro. to Database System (CSD317 - LEC)',
        instructor: 'Sonia Khetrapaul',
        timings: '11:00:00 - 11:55:00',
        status: false,
      ),
    ],
    DateTime(2023, 11, 7): [
      Course(
        course: 'Artificial Intelligence (CSD311 - Lec)',
        instructor: 'Snehasis Mukherjee',
        timings: '08:00:00 - 08:55:00',
        status: true,
      ),
      Course(
        course: 'Applied Cryptography (CSD451 - Lec)',
        instructor: 'Sweta Mishra',
        timings: '09:00:00 - 09:55:00',
        status: true,
      ),
      Course(
        course: 'Applied Cryptography (CSD451 - Prac)',
        instructor: 'Sweta Mishra',
        timings: '13:00:00 - 14:55:00',
        status: true,
      ),
      Course(
        course: 'Design and Analysis of Algorithms (CSD319 - Lec)',
        instructor: 'Dolly Sharma',
        timings: '15:30:00 - 16:55:00',
        status: true,
      ),
    ],
  };

  DateTime _selectedDate = DateTime(2023, 11, 6);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Course> coursesForSelectedDate = courseMap[_selectedDate] ?? [];

    bool isWeekend = _selectedDate.weekday == DateTime.saturday ||
        _selectedDate.weekday == DateTime.sunday;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DatePickerContainer(
          selectedDate: _selectedDate,
          onDateSelected: (DateTime selectedDate) {
            if (selectedDate.isBefore(DateTime.now())) {
              setState(() {
                _selectedDate = selectedDate;
              });
            } else {
              // Show a popup message for future date selection
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Invalid Date'),
                    content: Text('You cannot select a future date.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
        if (isWeekend && coursesForSelectedDate.isEmpty)
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'No class today',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        else
          ListView.builder(
            itemCount: coursesForSelectedDate.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return buildCourseCard(
                course: coursesForSelectedDate[index].course,
                instructor: coursesForSelectedDate[index].instructor,
                timings: coursesForSelectedDate[index].timings,
                status: coursesForSelectedDate[index].status,
                height: height,
                width: width,
              );
            },
          ),
      ],
    );
  }
}

class Course {
  final String course;
  final String instructor;
  final String timings;
  final bool status;

  Course({
    required this.course,
    required this.instructor,
    required this.timings,
    required this.status,
  });
}

class DatePickerContainer extends StatefulWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateSelected;

  DatePickerContainer({
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  _DatePickerContainerState createState() => _DatePickerContainerState();
}

class _DatePickerContainerState extends State<DatePickerContainer> {
  Future<void> _selectPreviousDate() async {
    DateTime previousDate = widget.selectedDate.subtract(Duration(days: 1));
    widget.onDateSelected(previousDate);
  }

  Future<void> _selectNextDate() async {
    DateTime nextDate = widget.selectedDate.add(Duration(days: 1));
    widget.onDateSelected(nextDate);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != widget.selectedDate) {
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      // Add GestureDetector to open date selection popup
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
              '${widget.selectedDate.toLocal()}'.split(' ')[0],
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

Widget buildCourseCard({
  required String course,
  required String instructor,
  required String timings,
  required bool status,
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
              if (status == true)
                Text(
                  "Present",
                  style: TextStyle(color: Colors.green),
                ),
              if (status == false)
                Text(
                  "Absent",
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ],
      ),
    ),
  );
}
