import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/CalendarScreen/Components/Appbar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/CalendarScreen/Components/CalendarContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/CalendarScreen/Components/TimeLineTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final themeProvider = context.watch<ThemeProvider>();
    return Scaffold(
      backgroundColor: themeProvider.isDark?Colors.grey.shade900:Colors.grey.shade100,
      appBar: const AppBarOfCalendarScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Calendar
              CalendarContainer(
                today: today,
                onDaySelected: _onDaySelected,
              ),

              const SizedBox(height: 10),

              // Header
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tuesday, Oct 24",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 21,
                            color: themeProvider.isDark?Colors.white:Colors.black,
                          ),
                        ),
                        Text(
                          "4 Classes ~ 2 Assignments",
                          style: TextStyle(
                            color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add,
                            color: Colors.blue.shade600, size: 23),
                        const SizedBox(width: 5),
                        Text(
                          "Add Event",
                          style: TextStyle(
                            color: Colors.blue.shade600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Timeline (NOT scrollable on its own)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: const [
                    TimeLineTileWidget(
                      time: "9:00 AM",
                      isPast: true,
                      isFirst: true,
                    ),
                    TimeLineTileWidget(
                      time: "11:00 AM",
                      isPast: true,
                      isActive: true,
                    ),
                    TimeLineTileWidget(
                      time: "2:00 PM",
                      isPast: false,
                    ),
                    TimeLineTileWidget(
                      time: "4:30 PM",
                      isPast: false,
                      isLast: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
