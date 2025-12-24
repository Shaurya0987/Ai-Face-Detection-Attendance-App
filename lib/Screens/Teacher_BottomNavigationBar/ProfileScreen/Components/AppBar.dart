import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarOfProfile extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarOfProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return AppBar(
      elevation: 5,
      backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.grey.shade50,
      title: Text(
        "Teacher Profile",
        style: TextStyle(
          color: themeProvider.isDark?Colors.white:Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: () {
              
            },
            child: const Center(
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
