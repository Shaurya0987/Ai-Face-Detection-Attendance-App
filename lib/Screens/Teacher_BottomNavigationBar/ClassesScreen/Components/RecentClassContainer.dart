import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClassContainerRecent extends StatelessWidget {
  const ClassContainerRecent({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark = themeProvider.isDark;
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 25),
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border(
            left: BorderSide( 
              color: Colors.blue.shade600,
              width: 6,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20), // UI unchanged
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.circle,
                            size: 8, color: Colors.blue),
                        const SizedBox(width: 5),
                        Text(
                          "In Progress",
                          style:
                              TextStyle(color: Colors.blue.shade800),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "8:30 - 09:45 AM",
                    style: TextStyle(
                      color: isDark?Colors.grey.shade200:Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Text(
                "CS-101:",
                style: TextStyle(
                  color: isDark?Colors.white:Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Intro to Programming",
                style: TextStyle(
                  color: isDark?Colors.white:Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            color: isDark?Colors.grey.shade300:Colors.grey.shade600, size: 21),
                        const SizedBox(width: 8),
                        Text(
                          "Room 304",
                          style: TextStyle(
                            color: isDark?Colors.grey.shade300:Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Row(
                      children: [
                        Icon(Icons.people,
                            color: isDark?Colors.grey.shade300:Colors.grey.shade600,size: 21),
                        const SizedBox(width: 8),
                        Text(
                          "54 Students",
                          style: TextStyle(
                            color: isDark?Colors.grey.shade300:Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),

              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.face, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Take Attendance",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}