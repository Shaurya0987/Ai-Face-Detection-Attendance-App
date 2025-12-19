import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeacherAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const TeacherAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider=context.watch<ThemeProvider>();
    return AppBar(
      backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.white,
      elevation: 9,

      /// 👤 AVATAR
      leading: Padding(
        padding: const EdgeInsets.only(left: 10, top: 6, bottom: 6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
            width: 44,
            height: 44,
            fit: BoxFit.cover,
          ),
        ),
      ),

      /// 👋 TEXT CONTENT
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Welcome back,",
            style: TextStyle(
              fontSize: 13,
              color: themeProvider.isDark?Colors.grey.shade300:Colors.grey.shade600,
            ),
          ),
          Text(
            "Dr. Smith",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: themeProvider.isDark?Colors.white:Colors.black,
            ),
          ),
        ],
      ),

      /// 🔔 ACTIONS
      actions: [
        IconButton(
          icon: themeProvider.isDark?Icon(Icons.light_mode, size: 26, color: Colors.white):Icon(Icons.dark_mode, size: 26, color: Colors.black),
          onPressed: () {
            themeProvider.toggleTheme();
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: themeProvider.isDark?Colors.white:Colors.grey.shade200,
            child: const Icon(
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
