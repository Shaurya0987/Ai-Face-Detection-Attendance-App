import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// ---------------- CARD WITHOUT CHANGE VALUE ----------------
class ContainerWithoutValue extends StatelessWidget {
  final String title;
  final String Percentage;
  final IconData icon;
  final Color color;

  const ContainerWithoutValue({
    super.key,
    required this.title,
    required this.Percentage,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider=context.watch<ThemeProvider>();
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: themeProvider.isDark?Colors.grey.shade300:color.withOpacity(0.1),
            radius: 20,
            child: Icon(icon, size: 27, color: color),
          ),

          const Spacer(),

          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: themeProvider.isDark?Colors.white:Colors.grey.shade700,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            Percentage,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: themeProvider.isDark?Colors.white:Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
