import 'package:flutter/material.dart';

class AttendanceContainer extends StatelessWidget {
  final String value;
  final String title;
  final Color color;
  const AttendanceContainer({
    super.key, required this.value, required this.title, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: 100,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value,style: TextStyle(
                color: color,
                fontWeight: FontWeight.w900,
                fontSize: 30
              ),),
              Text(title,style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 13
              ),)
            ],
          ),
        ),
      ),
    );
  }
}


