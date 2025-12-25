import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OldClassContainer extends StatelessWidget {
  final String time;
  final String topic;
  final String room;
  final String totalStudents;

  const OldClassContainer({
    super.key,
    required this.time,
    required this.topic,
    required this.room,
    required this.totalStudents,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().isDark;

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark ? Colors.grey.shade800 : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.circle,color: Colors.grey.shade600,size: 8,),
                        SizedBox(width: 4,),
                        Text("Upcoming",style: TextStyle(
                          color: Colors.grey.shade600
                        ),),
                      ],
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      color: isDark ? Colors.grey.shade200 : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                topic,
                style: TextStyle(
                  color: isDark ? Colors.white : Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on,
                      size: 18,
                      color: isDark
                          ? Colors.grey.shade300
                          : Colors.grey.shade600),
                  const SizedBox(width: 8),
                  Text(
                    "Room $room",
                    style: TextStyle(
                      color: isDark
                          ? Colors.grey.shade300
                          : Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(width: 40),
                  Icon(Icons.people,
                      size: 18,
                      color: isDark
                          ? Colors.grey.shade300
                          : Colors.grey.shade600),
                  const SizedBox(width: 8),
                  Text(
                    "$totalStudents Students",
                    style: TextStyle(
                      color: isDark
                          ? Colors.grey.shade300
                          : Colors.grey.shade600,
                    ),
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
