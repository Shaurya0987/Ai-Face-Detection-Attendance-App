import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/CalendarScreen/Components/Appbar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/CalendarScreen/Components/CalendarContainer.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const AppBarOfCalendarScreen(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CalendarContainer(
              today: today,
              onDaySelected: _onDaySelected,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tuesday, Oct 24",style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 21
                      ),),
                      Text("4 Classes ~ 2 Assignments",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.add,color: Colors.blue.shade600,size: 23,),
                      SizedBox(width: 5,),
                      Text("Add Event",style: TextStyle(
                        color: Colors.blue.shade600,
                        fontSize: 18
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
