import 'package:flutter/material.dart';

class TeacherAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const TeacherAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
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
              color: Colors.grey.shade600,
            ),
          ),
          const Text(
            "Dr. Smith",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),

      /// 🔔 ACTIONS
      actions: [
        IconButton(
          icon: const Icon(Icons.dark_mode, size: 26, color: Colors.black),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey.shade200,
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
