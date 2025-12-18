import 'package:facedetectionapp/Screens/Scan Screen/components/AppBarWidget.dart';
import 'package:facedetectionapp/Screens/Scan Screen/components/TextsWidget.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/ContainerIcons.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/InstructionsSetWidget.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/components/SubmitButtonWidget.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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