
import 'package:facedetectionapp/Screens/Login Screen/Components/TextWidget.dart';
import 'package:facedetectionapp/Screens/Student Sign In Page/Components/DropDownMenu.dart';
import 'package:facedetectionapp/Screens/Student Sign In Page/Components/TextFeildController.dart';
import 'package:facedetectionapp/Screens/Student%20Sign%20In%20Page/Components/ActionSliderContainer.dart';
import 'package:flutter/material.dart';

class StudentSignIn extends StatefulWidget {
  const StudentSignIn({super.key});

  @override
  State<StudentSignIn> createState() => _StudentSignInState();
}

class _StudentSignInState extends State<StudentSignIn> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();

  String? selectedSem;
  final List<String> items = ['1', '2', '3', '4', '5', '6'];

  static const double _containerHeight = 550;

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
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            final screenHeight = constraints.maxHeight;

            final topPadding = screenHeight > _containerHeight
                ? (screenHeight - _containerHeight) / 2
                : 20;

            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                35,
                topPadding.floorToDouble(),
                35,
                keyboardHeight + 35,
              ),
              child: Container(
                height: _containerHeight+20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 24,
                      offset: Offset(0, 8),
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

                      TextFeildContainer(
                        nameController: nameController,
                        idController: idController,
                      ),

                      const SizedBox(height: 12),

                      // inside build()
                      dropDownMenuContainer(
                        dropDownValue: selectedSem ?? 'Choose your Sem',
                        items: ['Choose your Sem', ...items],
                        onChanged: (value) {
                          if (value == 'Choose your Sem') return;
                          setState(() {
                            selectedSem = value;
                          });
                        },
                      ),

                      const SizedBox(height: 30),

                      /// ✅ ACTION SLIDER (FIXED)
                      ActionSliderWidget(nameController: nameController, idController: idController, selectedSem: selectedSem),
                    ],
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
