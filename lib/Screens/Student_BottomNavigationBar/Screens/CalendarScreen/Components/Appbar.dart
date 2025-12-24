import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarOfCalendarScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarOfCalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return AppBar(
      backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.grey.shade50,
      elevation: 5,

      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
              width: 36,
              height: 36,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),

      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "STUDENT",
            style: TextStyle(
              letterSpacing: 2,
              color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600,
              fontSize: 13,
            ),
          ),
          Text(
            "Academic Calendar",
            style: TextStyle(
              color: themeProvider.isDark?Colors.white:Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.white,
                child: Icon(
                  Icons.search,
                  color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade700,
                  size: 24,
                ),
              ),
              const SizedBox(width: 7),
              CircleAvatar(
                radius: 23,
                backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.white,
                child: Icon(
                  Icons.notifications_active,
                  color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade700,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}