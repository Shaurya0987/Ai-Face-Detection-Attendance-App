import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class profileHeader extends StatelessWidget {
  const profileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 12),
          child: Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(60),
                child: Image(
                  image: AssetImage(
                    "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          "Dr Sarah Smith",
          style: TextStyle(
            fontSize: 23,
            color: themeProvider.isDark?Colors.white:Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Associate Professor",
          style: TextStyle(color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade600, fontSize: 15),
        ),
        Text(
          "Department of Computer Science",
          style: TextStyle(color: themeProvider.isDark?Colors.grey.shade300:Colors.grey, fontSize: 15),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                "ID: FAC-2023-009",
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.circle, color: Colors.green, size: 10),
                      SizedBox(width: 2),
                      Text(
                        "Active",
                        style: TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}