import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/AttendanceLineChart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttendanceTrendsContainer extends StatelessWidget {
  const AttendanceTrendsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider=context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        height: 335,
        width: double.infinity,
        decoration: BoxDecoration(
          color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Attendance Trends",
                style: TextStyle(
                  color: themeProvider.isDark?Colors.white:Colors.grey.shade700,
                  fontSize: 17,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "85%",
                        style: TextStyle(
                          fontSize: 31,
                          fontWeight: FontWeight.w900,
                          color: themeProvider.isDark?Colors.white:Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Avg",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: themeProvider.isDark?Colors.white:Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: themeProvider.isDark?Colors.green.shade100:Colors.green.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.trending_up_rounded,
                          color: Colors.green,
                          size: 18,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "+5% This Week",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AttendanceLineChart(),
            ],
          ),
        ),
      ),
    );
  }
}

