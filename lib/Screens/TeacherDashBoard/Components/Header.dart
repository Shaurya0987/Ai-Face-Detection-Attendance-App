import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider=context.watch<ThemeProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Today's Overview",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: themeProvider.isDark?Colors.blue.shade100:Colors.blue.shade50,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            "Live Updates",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}