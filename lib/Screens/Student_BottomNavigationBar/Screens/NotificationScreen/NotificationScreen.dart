import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/NotificationScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/NotificationScreen/Components/NotificationWidget.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/NotificationScreen/Components/TagsWidget.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/NotificationScreen/Components/UnreadNotificationWidget.dart';
import 'package:flutter/material.dart';

class StudentNotificationsScreen extends StatelessWidget {
  const StudentNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const AppBarOfNotification(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  TagsWidget(text: 'Today', isSelected: true),
                  TagsWidget(text: 'Week', isSelected: false),
                  TagsWidget(text: 'Month', isSelected: false),
                  TagsWidget(text: 'All', isSelected: false),
                ],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "NEW",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),

              UnreadNotificationWidget(),

              NotificationWidget(
                notificationText: 'Late Arrival Warning',
                time: '15m ago',
                icon: Icons.run_circle_outlined,
                iconColor: Colors.deepOrange,
                iconShade: Colors.deepOrange.shade50,
                normalTextstart: 'You are late for ',
                boldText: 'Physics Lab',
                normalTextend: '. The session started at 2:00 PM.',
              ),

              NotificationWidget(
                notificationText: 'Class Started',
                time: '1h ago',
                icon: Icons.school,
                iconColor: Colors.deepPurple,
                iconShade: Colors.deepPurple.shade50,
                normalTextstart: 'Your ',
                boldText: 'Calculus II',
                normalTextend: ' class has started in Room 101.',
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "EARLIER",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              NotificationWidget(notificationText: "Attendance Marked", time: "Yesterday", iconColor: Colors.teal, iconShade: Colors.teal.shade50, normalTextstart: "Succesfully Scanned face for Intro to ", boldText: "Biology", normalTextend: ".", icon: Icons.check_circle),
              NotificationWidget(notificationText: "Campus Event", time: "3 days ago", iconColor: Colors.grey, iconShade: Colors.grey.shade100, normalTextstart: "Science Fair Registration is now open at the  ", boldText: "Student Center", normalTextend: ".", icon: Icons.perm_phone_msg),
              NotificationWidget(notificationText: "App Update", time: "4 days ago", iconColor: Colors.grey.shade700, iconShade: Colors.grey.shade100, normalTextstart: "", boldText: "Version 2.1 ", normalTextend: "is available with improved face detection speed", icon: Icons.watch_later_outlined),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}


