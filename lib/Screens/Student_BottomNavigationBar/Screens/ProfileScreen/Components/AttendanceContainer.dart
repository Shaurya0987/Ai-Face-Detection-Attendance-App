import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttendanceContainer extends StatelessWidget {
  final String value;
  final String title;
  final Color color;
  const AttendanceContainer({
    super.key,
    required this.value,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: 100,
        width: 110,
        decoration: BoxDecoration(
          color: themeProvider.isDark ? Colors.grey.shade800 : Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(
                  color: (color == Colors.black && themeProvider.isDark)
                      ? Colors.white
                      : color,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade600, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
