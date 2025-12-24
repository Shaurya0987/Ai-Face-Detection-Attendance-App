import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;
  final bool isThemeToggle;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
    this.isThemeToggle = false,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return ListTile(
      leading: Icon(
        icon,
        color: isLogout
            ? Colors.red
            : themeProvider.isDark
                ? Colors.grey.shade300
                : Colors.grey,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout
              ? Colors.red
              : themeProvider.isDark
                  ? Colors.white
                  : Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),

      trailing: isThemeToggle
    ? CupertinoSwitch(
        value: themeProvider.isDark,
        activeColor: Colors.black, // iOS-style active color
        onChanged: (_) => themeProvider.toggleTheme(),
      )
    : isLogout
        ? null
        : Icon(
            Icons.arrow_forward_ios_outlined,
            size: 13,
            color: themeProvider.isDark
                ? Colors.grey.shade300
                : Colors.grey,
          ),


      onTap: () {
        if (isLogout) {
          // logout logic
        }
      },
    );
  }
}