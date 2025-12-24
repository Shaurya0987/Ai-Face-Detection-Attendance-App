import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarOfNotification extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarOfNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return AppBar(
      backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.grey.shade50,
      elevation: 4,

      leadingWidth: 220,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.asset(
                    "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
                    width: 46,
                    height: 46,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    "STUDENT",
                    style: TextStyle(
                      letterSpacing: 2,
                      color: themeProvider.isDark?Colors.grey.shade300:Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: themeProvider.isDark?Colors.white:Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
                  color: themeProvider.isDark?Colors.grey.shade300:Colors.blue.shade600,
                  size: 24,
                ),
              ),
              const SizedBox(width: 7),
              CircleAvatar(
                radius: 23,
                backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.white,
                child: Icon(
                  Icons.checklist_sharp,
                  color: themeProvider.isDark?Colors.blue.shade400:Colors.blue.shade600,
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
