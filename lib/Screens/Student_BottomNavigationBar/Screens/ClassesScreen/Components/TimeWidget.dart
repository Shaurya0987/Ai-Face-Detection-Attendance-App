import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Container(
      decoration: BoxDecoration(
        color: themeProvider.isDark?Colors.blue.shade100:Colors.blue.shade50,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(
                  Icons.access_time_filled_outlined,
                  color: themeProvider.isDark?Colors.blue.shade600:Colors.blue.shade700,
                  size: 21,
                ),
                const SizedBox(width: 6),
                Text(
                  "10:30 - 11:45",
                  style: TextStyle(
                    color: themeProvider.isDark?Colors.grey.shade900:Colors.grey.shade700,
                    fontSize: 16
                  ),
                ),
              ],
            ),
    
            SizedBox(
              height: 24,
              child: VerticalDivider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
            ),
    
            Row(
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: themeProvider.isDark?Colors.blue.shade600:Colors.blue.shade700,
                  size: 21,
                ),
                const SizedBox(width: 6),
                Text(
                  "Room 304",
                  style: TextStyle(
                    color: themeProvider.isDark?Colors.grey.shade900:Colors.grey.shade700,
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
