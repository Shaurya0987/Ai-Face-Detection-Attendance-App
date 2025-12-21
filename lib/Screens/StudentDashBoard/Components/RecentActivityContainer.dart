import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentActivityContainer2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String day;
  final IconData icon;
  final Color iconColor;
  final Color colorShade;
  const RecentActivityContainer2({
    super.key, required this.title, required this.subtitle, required this.time, required this.day, required this.icon, required this.iconColor, required this.colorShade,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: colorShade,
                borderRadius: BorderRadius.circular(16),
              ),
              child:Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      color: themeProvider.isDark?Colors.white:Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: themeProvider.isDark?Colors.white70:Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(fontWeight: FontWeight.w600,
                  color: themeProvider.isDark?Colors.white:Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  day,
                  style: TextStyle(
                    color: themeProvider.isDark?Colors.white70:Colors.grey.shade600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}