import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/ActivityContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentActivityContainer extends StatelessWidget {
  const RecentActivityContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Activity",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: themeProvider.isDark?Colors.white:Colors.black
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ActivityContainer(title: 'CS-101:Attendance Marked', subtitle: '45/50 students present', icon: Icons.check_circle, time: '10m ago', IconColor: Colors.green, iconShade: Colors.green.shade100,),
        ActivityContainer(title: 'Bio-202: Anomaly Detected', subtitle: '3 unIdentify faces found', icon: Icons.warning, time: '23m ago', IconColor: Colors.red, iconShade: Colors.red.shade100,)
      ],
    );
  }
}
