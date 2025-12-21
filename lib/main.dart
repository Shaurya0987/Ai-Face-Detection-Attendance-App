import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Provider/UserProvider.dart';
import 'package:facedetectionapp/Screens/Student_BottomNavigationBar/BottomNavigationBar.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/StudentDashBoard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => UserSession()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
      ),

      themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,

      home: BottomNavigationBarr(),
    );
  }
}
