import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/AvatarGroup.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/DayContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/TextFeildWidget.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/TimeWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentClassesScreen extends StatefulWidget {
  const StudentClassesScreen({super.key});

  @override
  State<StudentClassesScreen> createState() => _StudentClassesScreenState();
}

class _StudentClassesScreenState extends State<StudentClassesScreen> {
  final TextEditingController searchController = TextEditingController();

  // ✅ ADDED (required for AvatarGroup)
  final List<String> initials = ['JP', 'AK', 'MR'];
  final int extraCount = 24;

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      backgroundColor: themeProvider.isDark
          ? Colors.grey.shade900
          : Colors.grey.shade100,
      appBar: const AppBarrrr(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFeildWidget(searchController: searchController),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DayContainer(day: 'Wed', date: '25', isSelected: false),
                  DayContainer(day: 'Thu', date: '26', isSelected: false),
                  DayContainer(day: 'Fri', date: '27', isSelected: true),
                  DayContainer(day: 'Sat', date: '28', isSelected: false),
                  DayContainer(day: 'Sun', date: '29', isSelected: false),
                ],
              ),
              const SizedBox(height: 15),
              RecentClassWidget(initials: initials, extraCount: extraCount),
              ClassWidget(subject: 'CS 107', subjectTopic: 'Intro to CS', teacherName: 'Prof. Alan Turing', textColor: Colors.pink.shade600, shadeColor: Colors.pink.shade50, days: 'Mon,Wed', time: '12:00 PM', classRoom: 'Tech Lab 4',),
              ClassWidget(subject: 'Math 102', subjectTopic: 'Calculus II', teacherName: 'Dr Emily White', textColor: Colors.deepOrange.shade600, shadeColor: Colors.deepOrange.shade50, days: 'Mon,Wed,Fri', time: '1:00 PM', classRoom: 'Science Building, Room 101',),
              ClassWidget(subject: 'Hist 105', subjectTopic: 'World History', teacherName: 'Prof. David Chan', textColor: Colors.deepPurple.shade600, shadeColor: Colors.deepPurple.shade50, days: 'Thu,Fri', time: '3:00 PM', classRoom: 'Arts Hall, Room 2B',),
            ],
          ),
        ),
      ),
    );
  }
}

class ClassWidget extends StatelessWidget {
  final String subject;
  final String subjectTopic;
  final String teacherName;
  final Color textColor;
  final Color shadeColor;
  final String days;
  final String time;
  final String classRoom;

  const ClassWidget({super.key, required this.subject, required this.subjectTopic, required this.teacherName, required this.textColor, required this.shadeColor, required this.days, required this.time, required this.classRoom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: shadeColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 7,
                    ),
                    child: Text(
                      subject,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert_outlined, color: Colors.grey, size: 25),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 3),
                child: Text(
                 subjectTopic,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                teacherName,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.grey),
                  SizedBox(width: 12),
                  Text(
                    days,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 17),
                  ),
                  SizedBox(width: 40),
                  Icon(Icons.watch_later_rounded, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 17),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey),
                  Text(
                    classRoom,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentClassWidget extends StatelessWidget {
  const RecentClassWidget({
    super.key,
    required this.initials,
    required this.extraCount,
  });

  final List<String> initials;
  final int extraCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 270,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 7,
                        ),
                        child: Text(
                          "Bio 101",
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 7,
                        ),
                        child: Text(
                          "Lab",
                          style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert_outlined, color: Colors.grey, size: 25),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 3),
                child: Text(
                  "Intro to Biology",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                "Dr. Sarah John",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
              const SizedBox(height: 15),
              const TimeContainer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Divider(thickness: 2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarGroup(initials: initials, extraCount: extraCount),
                  Row(
                    children: const [
                      Text(
                        "View Details",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue, size: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
