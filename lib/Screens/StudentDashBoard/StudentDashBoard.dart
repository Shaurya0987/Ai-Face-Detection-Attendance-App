import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/Components/AttendanceCard.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/Components/NextClassWidget.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/Components/RecentActivityContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Scaffold(
      backgroundColor: themeProvider.isDark?Colors.grey.shade900:Colors.grey.shade100,
      appBar: const StudentAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const AttendanceCard(),
          const SizedBox(height: 22),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(
                "Up Next",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: themeProvider.isDark?Colors.white:Colors.black),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          SizedBox(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                NextClassWidget(
                  title: 'Intro to DSA',
                  image: 'Assets/dataStructure.jpg',
                  time: '10:30 AM',
                  venue: 'Room 304',
                ),
                SizedBox(width: 12),
                NextClassWidget(
                  title: "Indian Geography",
                  image: "Assets/geography.jpg",
                  time: "11:45 AM",
                  venue: "Room 105",
                ),
                SizedBox(width: 12),
                NextClassWidget(
                  title: "Computer Science",
                  image: "Assets/cs.jpg",
                  time: "1:00 PM",
                  venue: "Room 214",
                ),
              ],
            ),
          ),

          const SizedBox(height: 26),

          Text(
            "Recent Activity",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900,color: themeProvider.isDark?Colors.white:Colors.black),
          ),

          const SizedBox(height: 12),

          RecentActivityContainer2(title: "Intro to DSA", subtitle: "Marked Absent", time: "9:00 AM", day: "TODAY", icon: Icons.cancel, iconColor: Colors.red, colorShade: Colors.red.shade100),
          RecentActivityContainer2(title: "Physics Lab", subtitle: "Marked Present Face Scan", time: "2:00 PM", day: "YESTERDAY", icon: Icons.check_circle, iconColor: Colors.green, colorShade: Colors.green.shade100),
          RecentActivityContainer2(title: "English Lit", subtitle: "Marked Late(15 mins)", time: "11:15 AM", day: "YESTERDAY", icon: Icons.access_time_filled, iconColor: Colors.deepOrange, colorShade: Colors.deepOrange.shade100),
        ],
      ),
    );
  }
}

