import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const StudentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return AppBar(
      backgroundColor:
          themeProvider.isDark ? Colors.grey.shade800 : Colors.white,
      elevation: 4,

      leading: Padding(
        padding: const EdgeInsets.only(left: 10, top: 6, bottom: 6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
            fit: BoxFit.cover,
          ),
        ),
      ),

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "STUDENT",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 13,
              color: themeProvider.isDark
                  ? Colors.grey.shade300
                  : Colors.grey.shade600,
            ),
          ),
          Text(
            "Good Morning, Alex",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color:
                  themeProvider.isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),

      actions: [
        IconButton(
          icon: Icon(
            themeProvider.isDark
                ? Icons.light_mode
                : Icons.dark_mode,
            color:
                themeProvider.isDark ? Colors.white : Colors.black,
          ),
          onPressed: () {
            themeProvider.toggleTheme();
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: themeProvider.isDark
                ? Colors.white
                : Colors.grey.shade200,
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
