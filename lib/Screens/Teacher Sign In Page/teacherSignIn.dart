
import 'package:action_slider/action_slider.dart';
import 'package:facedetectionapp/Provider/UserProvider.dart';
import 'package:facedetectionapp/Screens/Login%20Screen/Components/TextWidget.dart';
import 'package:facedetectionapp/Screens/Scan%20Screen/TeacherScanScreen.dart';
import 'package:facedetectionapp/Screens/Teacher Sign In Page/Components/AlreadyLogged.dart';
import 'package:facedetectionapp/Screens/Teacher Sign In Page/Components/TextFeildContainers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeacherSignIn extends StatefulWidget {
  const TeacherSignIn({super.key});

  @override
  State<TeacherSignIn> createState() => _TeacherSignInState();
}

class _TeacherSignInState extends State<TeacherSignIn> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  static const double _containerHeight = 580;

  @override
  void dispose() {
    nameController.dispose();
    idController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffF5F7FA),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                35,
                20,
                35,
                MediaQuery.of(context).viewInsets.bottom + 20,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Center(
                  child: Container(
                    height: _containerHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 24,
                          offset: Offset(0, 6),
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidget(),
                          const SizedBox(height: 30),

                          /// INPUT FIELDS
                          TextFeildsContainer(
                            nameController: nameController,
                            idController: idController,
                            passController: passController,
                          ),

                          const SizedBox(height: 30),

                          /// ✅ FIXED ACTION SLIDER
                          ActionSlider.standard(
                            height: 56,
                            sliderBehavior: SliderBehavior.stretch,
                            toggleColor: Colors.blue,
                            backgroundColor: Colors.blue.shade300,
                            foregroundBorderRadius:
                                BorderRadius.circular(16),
                            backgroundBorderRadius:
                                BorderRadius.circular(16),
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                            child: Text(
                              "Slide to login",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            action: (controller) async {
                              controller.loading();
                              await Future.delayed(
                                const Duration(milliseconds: 600),
                              );

                              /// 🔴 VALIDATION
                              if (nameController.text.trim().isEmpty ||
                                  idController.text.trim().isEmpty ||
                                  passController.text.trim().isEmpty) {
                                controller.reset();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text("Please fill all details"),
                                    backgroundColor: Colors.redAccent,
                                  ),
                                );
                                return;
                              }

                              if (idController.text.length != 5) {
                                controller.reset();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Invalid ID"),
                                    backgroundColor: Colors.redAccent,
                                  ),
                                );
                                return;
                              }

                              /// ✅ SAVE DATA
                              final userSession =context.read<UserSession>();
                              
                              userSession.setName(
                                nameController.text.trim(),
                              );
                              userSession.setrollno(
                                idController.text.trim(),
                              );

                              /// ✅ SUCCESS ANIMATION
                              controller.success();

                              await Future.delayed(
                                const Duration(milliseconds: 300),
                              );

                              /// ✅ SAFE NAVIGATION
                              WidgetsBinding.instance
                                  .addPostFrameCallback((_) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        TeacherScanScreen(),
                                  ),
                                );
                              });
                            },
                          ),

                          const SizedBox(height: 16),
                          const AlreadyLoggedWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
