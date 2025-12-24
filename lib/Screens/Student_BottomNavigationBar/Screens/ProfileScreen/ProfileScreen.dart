import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/Appbar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/AttendanceContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/PersonalInfoContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/ProfileHeader.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/SettingTileWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      backgroundColor: themeProvider.isDark
          ? Colors.grey.shade900
          : Colors.grey.shade100,
      appBar: const AppBarInfo(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AttendanceContainer(
                    value: '85%',
                    title: 'ATTENDANCE',
                    color: Colors.blue,
                  ),
                  AttendanceContainer(
                    value: "142",
                    title: "CLASSES",
                    color: Colors.black,
                  ),
                  AttendanceContainer(
                    value: "4",
                    title: "LATE",
                    color: Colors.deepOrange,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Personal Info",
                  style: TextStyle(
                    color: themeProvider.isDark
                        ? Colors.white
                        : Colors.black,
                    fontSize: 21,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: themeProvider.isDark
                      ? Colors.grey.shade800
                      : Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      PersonalInfoWidget(
                        title: 'EMAIL ADDRESS',
                        email: 'alex.johnson@college.edu',
                        icon: Icons.email,
                        color: Colors.deepOrange,
                        iconShade: Colors.deepOrange.shade100,
                      ),
                      Divider(color: Colors.grey.shade300, thickness: 2),
                      PersonalInfoWidget(
                        title: "PHONE NUMBER",
                        email: "+91 7767769876",
                        icon: Icons.call,
                        color: Colors.blue,
                        iconShade: Colors.blue.shade100,
                      ),
                      Divider(color: Colors.grey.shade300, thickness: 2),
                      Personal2InfoWidget(
                        title: "FACE RECOGNITION DATA",
                        email: "ACTIVE",
                        icon: Icons.face,
                        color: Colors.green,
                        iconShade: Colors.green.shade100,
                      ),
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: themeProvider.isDark
                      ? Colors.grey.shade800
                      : Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children:  [
                    SettingsTile(
                      icon: Icons.notifications_none,
                      title: "Notifications",
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 2,height: 1,),
                    SettingsTile(
                      icon: Icons.lock_outline,
                      title: "Privacy & Security",
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 2,height: 1,),
                    SettingsTile(
                      icon: Icons.dark_mode_outlined,
                      title: "Dark Theme",
                      isThemeToggle: true,
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 2,height: 1,),
                    SettingsTile(
                      icon: Icons.help_outline,
                      title: "Help & Support",
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 2,height: 1,),
                    SettingsTile(
                      icon: Icons.logout,
                      title: "Log Out",
                      isLogout: true,
                    ),
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


