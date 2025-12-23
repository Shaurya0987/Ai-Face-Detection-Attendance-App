import 'package:facedetectionapp/Provider/ThemeProvider.dart' show ThemeProvider;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarInfo extends StatelessWidget implements PreferredSizeWidget {
  const AppBarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return AppBar(
      backgroundColor: themeProvider.isDark?Colors.grey.shade800:Colors.white,
      leading: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(Icons.person_pin_circle_rounded, size: 35),
      ),
      title: const Text("My Profile"),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            "Edit",
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 17),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
