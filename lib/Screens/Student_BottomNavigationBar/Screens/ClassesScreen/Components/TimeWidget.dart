import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
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
                  color: Colors.blue.shade700,
                  size: 21,
                ),
                const SizedBox(width: 6),
                Text(
                  "10:30 - 11:45",
                  style: TextStyle(
                    color: Colors.grey.shade700,
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
                  color: Colors.blue.shade600,
                  size: 21,
                ),
                const SizedBox(width: 6),
                Text(
                  "Room 304",
                  style: TextStyle(
                    color: Colors.grey.shade700,
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
