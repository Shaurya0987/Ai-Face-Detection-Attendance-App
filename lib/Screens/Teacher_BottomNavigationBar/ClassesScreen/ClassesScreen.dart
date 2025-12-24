import 'package:facedetectionapp/Screens/TeacherDashBoard/Components/Header.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/OldClassContainer.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/RecentClassContainer.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TeacherClassesScreen extends StatelessWidget {
  const TeacherClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: const AppBarofClassScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "SCHEDULE",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Header(),
              const SizedBox(height: 15),

              /// 🔥 TIMELINE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: const [
                    TeacherTimeLine(
                      isFirst: true,
                      isPast: true,
                      isActive: true,
                      showRecent: true, // ✅ FIRST = LIVE CLASS
                    ),
                    TeacherTimeLine(isPast: true),
                    TeacherTimeLine(isPast: true),
                    TeacherTimeLine(isLast: true, isPast: false),
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


class TeacherTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final bool isActive;
  final bool showRecent;

  const TeacherTimeLine({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.isPast,
    this.isActive = false,
    this.showRecent = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: showRecent ? 260 : 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,

        beforeLineStyle: LineStyle(
          color: Colors.grey.shade500,
          thickness: 2,
        ),

        indicatorStyle: IndicatorStyle(
          width: 30,
          color: isActive ? Colors.blue : Colors.white,
          iconStyle: IconStyle(
            iconData: isActive
                ? Icons.access_time_filled_sharp
                : Icons.circle_outlined,
            color: isActive ? Colors.white : Colors.grey.shade500,
          ),
        ),

        /// 🔥 CONDITIONAL CONTENT
        endChild: showRecent
            ? const ClassContainerRecent()
            : const OldClassContainer(),
      ),
    );
  }
}
