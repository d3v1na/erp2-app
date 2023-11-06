import 'package:erp2_app/screens/course_list.dart';
import 'package:flutter/material.dart';
import 'menu.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  //popup for confirmation
  // Function to show the course details in a popup
  void _confirmSwap() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Text(
                'Are you sure you want to swap seats?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF545F71),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(108, 48),
                      alignment: Alignment.center,
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
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _requestSent();
                    },
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(108, 48),
                      alignment: Alignment.center,
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
                ],
              )
            ],
          ),
          
        );
      },
    );
  }

  void _requestSent() {
    showDialog(
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 1), () {
                          Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  CourseList(),
                      ),
                    );
                        });
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

              SizedBox(height: 20),
              //use icon here
              Icon(Icons.check_circle_outline_rounded, color: Colors.green, size: 100),

              SizedBox(height: 20),
              Text(
                'Request sent!',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF545F71),
                ),
              ),
              
               
            ],
          ),
          
        );
      },
    );
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
          "Swap - CSD311",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            SizedBox(
              height: height * 0.2,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SNU Email ID of the student to swap with',
                hintText: 'netid@snu.edu.in',
                labelStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF545F71),
                  letterSpacing: -0.28,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Code',
                hintText: 'e.g. CSD311',
                labelStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF545F71),
                  letterSpacing: -0.28,
                ),
              ),
            ),
            SizedBox(height: height * 0.02), // Add some spacing
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  _confirmSwap();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(168, 48),
                    backgroundColor: const Color(0xFF545F71)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
