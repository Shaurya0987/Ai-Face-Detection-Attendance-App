import 'package:facedetectionapp/Screens/Scan Screen/components/AppBarWidget.dart';
import 'package:facedetectionapp/Screens/Scan Screen/components/TextsWidget.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/ContainerIcons.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/InstructionsSetWidget.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

class StudentScanScreen extends StatefulWidget {
  const StudentScanScreen({super.key});

  @override
  State<StudentScanScreen> createState() => _StudentScanScreenState();
}

class _StudentScanScreenState extends State<StudentScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(context),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 5),
              const TextsWidget(),
              const SizedBox(height: 25),

              ContainerIcon(),

              const SizedBox(height: 20),

              InstructionsWidget(),

              const SizedBox(height: 40),

              SubmitButtomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}



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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StudentBottomNavigationBarr()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Scan Student Face",
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