import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/Screens/CalendarScreen/Components/EventCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineTileWidget extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final bool isActive;
  final String time;

  const TimeLineTileWidget({
    super.key,
    required this.time,
    required this.isPast,
    this.isFirst = false,
    this.isLast = false,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final Color indicatorColor = isActive
        ? Colors.blue
        : isPast
            ? Colors.green
            : Colors.grey.shade400;

    final String statusText = isActive
        ? "LIVE NOW"
        : isPast
            ? "ENDED"
            : "UPCOMING";

    final Color statusColor = isActive
        ? Colors.blue
        : isPast
            ? Colors.green
            : Colors.orange;

    return SizedBox(
      height: 160,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        alignment: TimelineAlign.manual,
        lineXY: 0.16,

        beforeLineStyle: LineStyle(
          color: Colors.grey.shade300,
          thickness: 3,
        ),
        afterLineStyle: LineStyle(
          color: Colors.grey.shade300,
          thickness: 3,
        ),

        indicatorStyle: IndicatorStyle(
          width: 22,
          height: 22,
          color: indicatorColor,
        ),

        // LEFT TIME
        startChild: Padding(
          padding: const EdgeInsets.only(top: 68,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time.split(" ")[0],
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                  color:
                      isActive ? Colors.blue : themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade700,
                ),
              ),
              Text(
                time.split(" ")[1],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isActive ? Colors.blue : themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
        
        // RIGHT EVENT CARD (UNCHANGED UI)
        endChild: EventCard(
          title: "Intro to Biology",
          typeDuration: "Lecture • 90 min",
          location: "Room 304, Science Block",
          statusText: statusText,
          statusColor: statusColor,
          accentColor: indicatorColor,
        ),
      ),
    );
  }
}
