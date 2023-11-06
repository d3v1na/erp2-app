import 'package:erp2_app/screens/search_results.dart';
import 'package:flutter/material.dart';
import 'menu.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String subjectValue = 'Select Subject';
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
          "Enroll - Search",
          style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      endDrawer: MenuScreen(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.02,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Subject',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xff545F71)),
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
                  items: <String>[
                    'Select Subject',
                    'Computer Science',
                    'Electrical Engineering',
                    'English',
                    'History',
                    'Art',
                    'International Relations',
                    'Economics',
                    'Finance'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff545F71))),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Course Number',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xff545F71)),
          ),
          SizedBox(height: height * 0.01),
          // container for course number to type in
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
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Course Number',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff545F71)),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Course Career',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xff545F71)),
          ),
          SizedBox(height: height * 0.01),
          // container for course career with dropdown
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
                  value: courseCareerValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      // dropdownValue = newValue!;
                      courseCareerValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Select Course Career',
                    'Undergraduate',
                    'Graduate'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff545F71))),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Course Attribute',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xff545F71)),
          ),
          SizedBox(height: height * 0.01),
          // container for course attribute with dropdown
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
                  value: courseAttributeValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      // dropdownValue = newValue!;
                      courseAttributeValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Select Course Attribute',
                    'IC Component',
                    'REAL Component',
                    'VELS Component'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff545F71))),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            'Attribute Value',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xff545F71)),
          ),
          SizedBox(height: height * 0.01),
          // container for attribute value with dropdown, but options changed based on course attribute selection
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
                  value: attributeValueValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      // dropdownValue = newValue!;
                      attributeValueValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Select Attribute Value',
                    'IC1',
                    'IC2',
                    'IC3',
                    'IC4',
                    'IC5',
                    'IC6',
                    'IC7',
                    'IC8',
                    'IC9',
                    'IC10',
                    'IC11',
                    'IC12',
                    'IC13',
                    'IC14',
                    'IC15',
                    'IC16',
                    'IC17',
                    'IC18',
                    'IC19',
                    'IC20',
                    'IC21',
                    'IC22',
                    'IC23',
                    'IC24',
                    'IC25',
                    'IC26',
                    'IC27',
                    'IC28',
                    'IC29',
                    'IC30',
                    'IC31',
                    'IC32',
                    'IC33',
                    'IC34',
                    'IC35',
                    'IC36',
                    'IC37',
                    'IC38',
                    'IC39',
                    'IC40',
                    'IC41',
                    'IC42',
                    'IC43',
                    'IC44',
                    'IC45',
                    'IC46',
                    'IC47',
                    'IC48',
                    'IC49',
                    'IC50',
                    'IC51',
                    'IC52',
                    'IC53',
                    'IC54',
                    'IC55',
                    'IC56',
                    'IC57',
                    'IC58',
                    'IC59',
                    'IC60',
                    'IC61',
                    'IC62',
                    'IC63',
                    'IC64',
                    'IC65',
                    'IC66',
                    'IC67',
                    'IC68',
                    'IC69',
                    'IC70',
                    'IC71',
                    'IC72',
                    'IC73',
                    'IC74',
                    'IC75',
                    'IC76',
                    'IC77',
                    'IC78',
                    'IC79',
                    'IC80',
                    'IC81'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff545F71))),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Row(
            // checkbox for open classes only
            children: [
              Checkbox(
                value: openClassesOnlyValue,
                onChanged: (bool? value) {
                  setState(() {
                    // checkboxValue = value!;
                    openClassesOnlyValue = value ?? false;
                  });
                },
              ),
              Text(
                'Open Classes Only',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff545F71)),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Row(
            //clear and search buttons
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SearchResults(),
                    ),
                  );
                },
                child: Text(
                  "Search",
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
