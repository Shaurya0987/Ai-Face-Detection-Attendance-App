import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/Appbar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/AttendanceContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/PersonalInfoContainer.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ProfileScreen/Components/ProfileHeader.dart';
import 'package:flutter/material.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const AppBarInfo(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Personal Info",
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
              ),
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PersonalInfoWidget(
                        title: 'EMAIL ADDRESS',
                        email: 'alex.johnson@college.edu',
                        icon: Icons.email,
                        color: Colors.deepOrange.shade600,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: const [
                      SettingsTile(
                        icon: Icons.notifications_none,
                        title: "Notifications",
                      ),
                      Divider(height: 1,color: Colors.grey,),
                      SettingsTile(
                        icon: Icons.lock_outline,
                        title: "Privacy & Security",
                      ),
                      Divider(height: 1,color: Colors.grey,),
                      SettingsTile(
                        icon: Icons.help_outline,
                        title: "Help & Support",
                      ),
                      Divider(height: 1,color: Colors.grey,),
                      SettingsTile(
                        icon: Icons.logout,
                        title: "Log Out",
                        isLogout: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isLogout ? Colors.red : Colors.black87;

    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.grey, size: 25),
      title: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: isLogout ? null : Icon(Icons.arrow_forward_ios, size: 13,color: Colors.grey,),
      onTap: () {
        if (isLogout) {
          // handle logout
        } else {
          // navigate
        }
      },
    );
  }
}
