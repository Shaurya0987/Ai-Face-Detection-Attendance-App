
import 'package:facedetectionapp/Screens/Login%20Screen/Components/LogoWidget.dart';
import 'package:facedetectionapp/Screens/Login%20Screen/Components/PositionedWidget.dart';
import 'package:facedetectionapp/Screens/Login%20Screen/Components/TextWidget.dart';
import 'package:facedetectionapp/Screens/Student%20Sign%20In%20Page/StudentSignIn.dart' ;
import 'package:facedetectionapp/Screens/Teacher%20Sign%20In%20Page/teacherSignIn.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo Container
                  LogoWidget(),

                  const SizedBox(height: 40),

                  // Text Container
                  TextWidget(),

                  const SizedBox(height: 50),

                  // Faculty / Admin
                  UserWidget(
                    title: "Faculty / Admin",
                    subtitle: "Manages attendance & reports",
                    icon: Icons.admin_panel_settings_sharp,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TeacherSignIn(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 20),

                  // Student
                  UserWidget(
                    title: "Student",
                    subtitle: "Mark presence & view history",
                    icon: Icons.person_pin_sharp,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentSignIn(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Bottom Text
            BottomPositionedWidget(),
          ],
        ),
      ),
    );
  }
}

