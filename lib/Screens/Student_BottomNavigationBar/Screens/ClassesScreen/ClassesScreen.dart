import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/AppBar.dart';
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

  @override
  void dispose() {
    searchController.dispose(); // ✅ always dispose controllers
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFeildWidget(searchController: searchController),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DayContainer(day: 'Wed', date: '25', isSelected: false),
                DayContainer(day: 'Thu', date: '26', isSelected: false),
                DayContainer(day: 'Fri', date: '27', isSelected: true),
                DayContainer(day: 'Sat', date: '28', isSelected: false),
                DayContainer(day: 'Sun', date: '29', isSelected: false),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 300,
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
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.symmetric(
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
                          SizedBox(width: 14),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 7,
                            ),
                            child: Text(
                              "Bio 101",
                              style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 3),
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
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      TimeContainer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10,top: 20),
                        child: Divider(thickness: 2,),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [

                            ],
                          ),
                          Row(
                            children: [
                              Text("ViewDetails")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
