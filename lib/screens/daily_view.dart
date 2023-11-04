import 'package:erp2_app/screens/date_picker.dart';
import 'package:flutter/material.dart';

class DailyView extends StatefulWidget {
  const DailyView({super.key});

  @override
  State<DailyView> createState() => _DailyViewState();
}

class _DailyViewState extends State<DailyView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DatePickerContainer(),
        buildCourseCard(
          course: 'Artificial Intelligence (CSD311 - LEC)',
          instructor: 'Snehasis Mukherjee',
          timings: '08:00:00 - 08:55:00',
          status: true,
          height: height, // Pass the height from your context
          width: width, // Pass the width from your context
        ),
        buildCourseCard(
          course: 'Artificial Intelligence (CSD311 - LEC)',
          instructor: 'Snehasis Mukherjee',
          timings: '08:00:00 - 08:55:00',
          status: true,
          height: height, // Pass the height from your context
          width: width, // Pass the width from your context
        ),
        buildCourseCard(
          course: 'Artificial Intelligence (CSD311 - LEC)',
          instructor: 'Snehasis Mukherjee',
          timings: '08:00:00 - 08:55:00',
          status: false,
          height: height, // Pass the height from your context
          width: width, // Pass the width from your context
        )
      ],
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
