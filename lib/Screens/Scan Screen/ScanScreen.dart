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

              const SizedBox(height: 30),

              /// SCAN FACE BUTTON (CORRECT WAY)
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                  ),
                  onPressed: () {
                    // TODO: Navigate to FaceScanScreen
                  },
                  child: const Text(
                    "Scan Face",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
