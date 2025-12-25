
import 'package:facedetectionapp/Screens/Scan Screen/components/AppBarWidget.dart';
import 'package:facedetectionapp/Screens/Scan Screen/components/TextsWidget.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/ContainerIcons.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/InstructionsSetWidget.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/SubmitButtonWidget.dart';
import 'package:flutter/material.dart';

class TeacherScanScreen extends StatefulWidget {
  const TeacherScanScreen({super.key});

  @override
  State<TeacherScanScreen> createState() => _TeacherScanScreen();
}

class _TeacherScanScreen extends State<TeacherScanScreen> {
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