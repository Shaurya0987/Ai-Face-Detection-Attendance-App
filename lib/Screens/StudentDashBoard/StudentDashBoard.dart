import 'package:facedetectionapp/Screens/StudentDashBoard/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/Components/AttendanceCard.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/Components/NextClassWidget.dart';
import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const StudentAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const AttendanceCard(),
          const SizedBox(height: 22),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Up Next",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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

          const Text(
            "Recent Activity",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          ),

          const SizedBox(height: 12),

          RecentActivityContainer(title: "Intro to DSA", subtitle: "Marked Absent", time: "9:00 AM", day: "TODAY", icon: Icons.cancel, iconColor: Colors.red, colorShade: Colors.red.shade100),
          RecentActivityContainer(title: "Physics Lab", subtitle: "Marked Present Face Scan", time: "2:00 PM", day: "YESTERDAY", icon: Icons.check_circle, iconColor: Colors.green.shade100, colorShade: Colors.green.shade100),
          RecentActivityContainer(title: "English Lit", subtitle: "Marked Late(15 mins)", time: "11:15 AM", day: "YESTERDAY", icon: Icons.access_time_filled, iconColor: Colors.deepOrange, colorShade: Colors.deepOrange.shade100),
        ],
      ),
    );
  }
}

class RecentActivityContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String day;
  final IconData icon;
  final Color iconColor;
  final Color colorShade;
  const RecentActivityContainer({
    super.key, required this.title, required this.subtitle, required this.time, required this.day, required this.icon, required this.iconColor, required this.colorShade,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: colorShade,
                borderRadius: BorderRadius.circular(16),
              ),
              child:Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  day,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
