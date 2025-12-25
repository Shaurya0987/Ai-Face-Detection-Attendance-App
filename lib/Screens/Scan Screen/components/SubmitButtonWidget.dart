import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

class SubmitButtomWidget extends StatelessWidget {
  const SubmitButtomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 72, 
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 5,
        ),
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TeacherBottomNavigationBarr()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Scan Face",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Tap to mark your attendance",
              style: TextStyle(
                fontSize: 13,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}