import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/ClassesContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/DayContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/TextFeildWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentClassesScreen extends StatefulWidget {
  const StudentClassesScreen({super.key});

  @override
  State<StudentClassesScreen> createState() => _StudentClassesScreenState();
}

class _StudentClassesScreenState extends State<StudentClassesScreen> {
  final TextEditingController searchController = TextEditingController();


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
              ClassWidget(subject: 'CS 107', subjectTopic: 'Intro to CS', teacherName: 'Prof. Alan Turing', textColor: Colors.pink, shadeColor: Colors.pink, days: 'Mon,Wed', time: '12:00 PM', classRoom: 'Tech Lab 4',),
              ClassWidget(subject: 'Math 102', subjectTopic: 'Calculus II', teacherName: 'Dr Emily White', textColor: Colors.deepOrange, shadeColor: Colors.deepOrange, days: 'Mon,Wed,Fri', time: '1:00 PM', classRoom: 'Science Building, Room 101',),
              ClassWidget(subject: 'Hist 105', subjectTopic: 'World History', teacherName: 'Prof. David Chan', textColor: Colors.deepPurple, shadeColor: Colors.deepPurple, days: 'Thu,Fri', time: '3:00 PM', classRoom: 'Arts Hall, Room 2B',),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}

