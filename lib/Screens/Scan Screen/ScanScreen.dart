import 'package:facedetectionapp/Screens/Scan Screen/components/AppBarWidget.dart';
import 'package:facedetectionapp/Screens/Scan Screen/components/TextsWidget.dart';
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

              /// FACE SCAN PREVIEW CONTAINER
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(21),
                ),
                child: const Center(
                  child: Icon(
                    Icons.face,
                    size: 120,
                    color: Colors.blue,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// INSTRUCTIONS (CLEAR & FORMAL)
              Column(
                children: const [
                  Text(
                    "Face Scan Instructions",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• Ensure proper lighting\n"
                    "• Remove mask or glasses\n"
                    "• Look directly at the camera",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// SCAN FACE BUTTON (BIGGER & CLEAN)
              SizedBox(
                width: double.infinity,
                height: 72, // 👈 bigger button
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    // TODO: Navigate to FaceScanScreen
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
