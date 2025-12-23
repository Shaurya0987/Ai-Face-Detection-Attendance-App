import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/AvatarGroup.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/ClassesScreen/Components/TimeWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClassWidget extends StatelessWidget {
  final String subject;
  final String subjectTopic;
  final String teacherName;
  final MaterialColor textColor;
  final MaterialColor shadeColor;
  final String days;
  final String time;
  final String classRoom;

  const ClassWidget({super.key, required this.subject, required this.subjectTopic, required this.teacherName, required this.textColor, required this.shadeColor, required this.days, required this.time, required this.classRoom});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 220,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: themeProvider.isDark?shadeColor.shade100:shadeColor.shade50,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 7,
                    ),
                    child: Text(
                      subject,
                      style: TextStyle(
                        color: themeProvider.isDark?textColor.shade700:textColor.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert_outlined, color: themeProvider.isDark?Colors.grey.shade300:Colors.grey, size: 25),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 3),
                child: Text(
                 subjectTopic,
                  style: TextStyle(
                    color: themeProvider.isDark?Colors.white:Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                teacherName,
                style: TextStyle(
                  color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.grey),
                  SizedBox(width: 12),
                  Text(
                    days,
                    style: TextStyle(color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600, fontSize: 17),
                  ),
                  SizedBox(width: 40),
                  Icon(Icons.watch_later_rounded, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    time,
                    style: TextStyle(color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600, fontSize: 17),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey),
                  Text(
                    classRoom,
                    style: TextStyle(color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentClassWidget extends StatelessWidget {
  const RecentClassWidget({
    super.key,
    required this.initials,
    required this.extraCount,
  });

  final List<String> initials;
  final int extraCount;

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 270,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: themeProvider.isDark?Colors.blue.shade200:Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 7,
                        ),
                        child: Text(
                          "Bio 101",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Container(
                        decoration: BoxDecoration(
                          color: themeProvider.isDark?Colors.green.shade100:Colors.green.shade50,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 7,
                        ),
                        child: Text(
                          "Lab",
                          style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert_outlined, color: Colors.grey, size: 25),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 3),
                child: Text(
                  "Intro to Biology",
                  style: TextStyle(
                    color: themeProvider.isDark?Colors.white:Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                "Dr. Sarah John",
                style: TextStyle(color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600, fontSize: 16),
              ),
              const SizedBox(height: 15),
              const TimeContainer(),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Divider(thickness: 2,color: themeProvider.isDark?Colors.grey.shade700:Colors.grey.shade300,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarGroup(initials: initials, extraCount: extraCount),
                  Row(
                    children: const [
                      Text(
                        "View Details",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue, size: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}