import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/Header.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/OldClassContainer.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/RecentClassContainer.dart';
import 'package:flutter/material.dart';

class TeacherClassesScreen extends StatelessWidget {
  const TeacherClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBarofClassScreen(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SCHEDULE",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Header(),
            ClassContainerRecent(),
            OldClassContainer()
          ],
        ),
      ),
    );
  }
}




