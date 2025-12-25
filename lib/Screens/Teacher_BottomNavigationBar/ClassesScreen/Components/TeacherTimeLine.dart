
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/OldClassContainer.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/Components/RecentClassContainer.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

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

    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(color: Colors.grey.shade500, thickness: 2),
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

      /// 🔥 DYNAMIC CONTENT (NO HEIGHT LIMIT)
      endChild: showRecent
    ? const ClassContainerRecent()
    : const OldClassContainer(
        time: '10:00 - 11:15',
        topic: 'CS-101: Data Structures',
        room: '304',
        totalStudents: '54',
      ),

    );
  }
}


                // OldClassContainer(
                //   time: '01:00 - 02:15',
                //   topic: 'CS-305: Algorithms',
                //   room: '305',
                //   totalStudents: '24',
                // ),
                // OldClassContainer(
                //   time: '03:00 - 04:15',
                //   topic: 'CS-101: Office Automation',
                //   room: '105',
                //   totalStudents: '43',
                // ),