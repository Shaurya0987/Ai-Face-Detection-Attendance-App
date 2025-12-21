import 'package:flutter/material.dart';

class AppBarrrr extends StatelessWidget implements PreferredSizeWidget {
  const AppBarrrr({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        "My Classes",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 25,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: 23,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png", 
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ✅ REQUIRED: tell Scaffold how tall this AppBar is
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
