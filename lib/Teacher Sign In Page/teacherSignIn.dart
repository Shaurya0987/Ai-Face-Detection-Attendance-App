import 'package:facedetectionapp/Login%20Screen/Components/TextWidget.dart';
import 'package:facedetectionapp/Teacher%20Sign%20In%20Page/Components/AlreadyLogged.dart';
import 'package:facedetectionapp/Teacher%20Sign%20In%20Page/Components/SubmitButton.dart';
import 'package:facedetectionapp/Teacher%20Sign%20In%20Page/Components/TextFeildContainers.dart';
import 'package:flutter/material.dart';

class TeacherSignIn extends StatefulWidget {
  const TeacherSignIn({super.key});

  @override
  State<TeacherSignIn> createState() => _TeacherSignInState();
}

class _TeacherSignInState extends State<TeacherSignIn> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: Container(
            height: 580,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 24,
                  offset: Offset(0, 6),
                  blurStyle: BlurStyle.outer
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),

                  TextWidget(),

                  const SizedBox(height: 30),

                  TextFeildsContainer(
                    nameController: nameController,
                    idController: idController,
                    passController: passController,
                  ),

                  const SizedBox(height: 20),

                  /// Submit Button
                  SubmitButton(),

                  const SizedBox(height: 12),

                  /// Footer
                  AlreadyLoggedWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

