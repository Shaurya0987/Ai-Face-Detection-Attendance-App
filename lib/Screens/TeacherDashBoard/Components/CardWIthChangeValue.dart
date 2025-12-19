import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// ---------------- CARD WITH CHANGE VALUE ----------------
class ContainerWithValue extends StatelessWidget {
  final String title;
  final String Percentage;
  final String value;
  final IconData icon;
  final Color color;

  const ContainerWithValue({
    super.key,
    required this.title,
    required this.Percentage,
    required this.value,
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
          /// ICON + VALUE
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: themeProvider.isDark?Colors.grey.shade300:color.withOpacity(0.1),
                radius: 20,
                child: Icon(icon, size: 27, color: color),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: themeProvider.isDark?Colors.green.shade100:Colors.green.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const Spacer(),

          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: themeProvider.isDark?Colors.white:Colors.grey.shade700,
              fontWeight: FontWeight.w900,
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