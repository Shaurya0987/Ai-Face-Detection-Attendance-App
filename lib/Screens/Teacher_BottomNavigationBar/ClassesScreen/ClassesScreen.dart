import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/Header.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/TeacherTimeLine.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeacherClassesScreen extends StatelessWidget {
  const TeacherClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark = themeProvider.isDark;
    return Scaffold(
      backgroundColor: isDark ? Colors.grey.shade900 : Colors.grey.shade100,
      appBar: const AppBarofClassScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SCHEDULE",
                style: TextStyle(
                  color: isDark ? Colors.grey.shade300 : Colors.grey.shade600,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Header(),
              const SizedBox(height: 15),

              /// 🔥 TIMELINE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: const [
                    TeacherTimeLine(
                      isFirst: true,
                      isPast: true,
                      isActive: true,
                      showRecent: true, // ✅ FIRST = LIVE CLASS
                    ),
                    TeacherTimeLine(isPast: true),
                    TeacherTimeLine(isPast: true),
                    TeacherTimeLine(isLast: true, isPast: false),
                  ],
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

