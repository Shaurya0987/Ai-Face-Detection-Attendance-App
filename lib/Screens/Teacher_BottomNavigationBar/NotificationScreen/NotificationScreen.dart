import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/NotificationScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/NotificationScreen/Components/Header.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/NotificationScreen/Components/NotificationContainers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeacherNotificationScreen extends StatelessWidget {
  const TeacherNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark=themeProvider.isDark;
    return Scaffold(
      backgroundColor: isDark?Colors.grey.shade900:Colors.grey.shade100,
      appBar: const AppBarofNotificationScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderContainer(),

              const SizedBox(height: 10),

              Text(
                "TODAY",
                style: TextStyle(
                  color: isDark?Colors.grey.shade200:Colors.grey.shade600,
                  letterSpacing: 2,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 10),

              RecentNotificationContainerTeacher(),
              RecentNotificationContainerTeacher2(title: "Attendance Summary", color: Colors.blue, subtitle: "45 studnets attended CS-101 class today. 90% attendance rate recorded", containerText: "View Class Report", time: '1h ago', icon: Icons.attach_email_sharp,),
              RecentNotificationContainerTeacher2(title: "New Enrollment", color: Colors.deepPurple, subtitle: "Sarah Jenkins has joined your CS-101 class roster", containerText: "View Profile", time: '3h ago', icon: Icons.person_add_alt_sharp,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "YESTERDAY",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    letterSpacing: 2,
                    fontSize: 15,
                  ),
                ),
              ),
              
              RecentNotificationContainerTeacher3(title: "System Maintance", color: Colors.grey, subtitle: "Scheduled maintance completed succesfully", time: "1d ago", icon: Icons.adf_scanner_sharp),
              RecentNotificationContainerTeacher3(title: "Low Attendance Alert", color: Colors.deepOrange, subtitle: "Eng-201 attendance dropped below 60%", time: "2d ago", icon: Icons.trending_down_sharp),

              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}



