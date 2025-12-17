
import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Provider/UserProvider.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/CameraPage.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/ScanScreen.dart';
import 'package:facedetectionapp/Screens/Splash%20Screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>ThemeProvider()),
    ChangeNotifierProvider(create: (_)=>UserSession()),
  ],child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ScanScreen(),
    );
  }
}

