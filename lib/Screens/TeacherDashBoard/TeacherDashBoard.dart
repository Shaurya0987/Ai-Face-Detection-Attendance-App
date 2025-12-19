import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/ActivityContainer.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/AttendanceLineChart.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/AttendanceTrends.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/CardWIthChangeValue.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/CardWithoutChangeValue.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/Header.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/QuickActionContainer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({super.key});

  @override
  State<TeacherDashboard> createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const TeacherAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Header(),

              const SizedBox(height: 20),

              /// ROW 1
              Row(
                children: const [
                  Expanded(
                    child: ContainerWithValue(
                      title: 'ATTENDANCE',
                      Percentage: '87%',
                      value: '+2.1%',
                      icon: Icons.pie_chart,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: ContainerWithoutValue(
                      title: "ACTIVE CLASSES",
                      Percentage: "12",
                      icon: Icons.school,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// ROW 2
              Row(
                children: [
                  Expanded(
                    child: ContainerWithoutValue(
                      title: "ABSENTEES",
                      Percentage: "48",
                      icon: Icons.people,
                      color: Colors.redAccent,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: ContainerWithValue(
                      title: "ID ACCURACY",
                      Percentage: "99.9%",
                      value: '+0.1%',
                      icon: Icons.face,
                      color: Colors.green.shade800,
                    ),
                  ),
                ],
              ),
              AttendanceTrendsContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Quick Actions",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),

              /// QUICK ACTIONS – ROW 1
              Row(
                children: const [
                  Expanded(
                    child: QuickActionsContainer(
                      title: "Student Directory",
                      subtitle: "View all profiles",
                      icon: Icons.people_alt_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: QuickActionsContainer(
                      title: "Manage Classes",
                      subtitle: "Schedule & Logs",
                      icon: Icons.calendar_month,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              /// QUICK ACTIONS – ROW 2
              Row(
                children: const [
                  Expanded(
                    child: QuickActionsContainer(
                      title: "Analytics",
                      subtitle: "Export Reports",
                      icon: Icons.analytics_outlined,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: QuickActionsContainer(
                      title: "Face ID",
                      subtitle: "Database Settings",
                      icon: Icons.face,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Column(
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
                  ActivityContainer(title: 'CS-101:Attendance Marked', subtitle: '45/50 students present', icon: Icons.check_circle, time: '10m ago', IconColor: Colors.green, iconShade: Colors.green.shade100,)
                ],
              ),

              SizedBox(height: 700),
            ],
          ),
        ),
      ),
    );
  }
}
