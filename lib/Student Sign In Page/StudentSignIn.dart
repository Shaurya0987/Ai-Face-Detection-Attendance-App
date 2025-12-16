import 'package:facedetectionapp/Login Screen/Components/TextWidget.dart';
import 'package:facedetectionapp/Login%20Screen/LoginScreen.dart';
import 'package:facedetectionapp/Student%20Sign%20In%20Page/Components/TextFeildController.dart';
import 'package:facedetectionapp/Teacher Sign In Page/Components/AlreadyLogged.dart';
import 'package:facedetectionapp/Teacher Sign In Page/Components/SubmitButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class StudentSignIn extends StatefulWidget {
  const StudentSignIn({super.key});

  @override
  State<StudentSignIn> createState() => _StudentSignInState();
}

class _StudentSignInState extends State<StudentSignIn> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  String dropDownValue = 'Choose your Sem';
  var items = ['Choose your Sem', '1', '2', '3', '4', '5', '6'];

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
      backgroundColor: const Color(0xffF5F7FA),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: Container(
            height: 550,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 24,
                  offset: Offset(0, 8),
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(),

                  const SizedBox(height: 30),

                  TextFeildContainer(
                    nameController: nameController,
                    idController: idController,
                  ),

                  const SizedBox(height: 5),

                  Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropDownValue,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        alignment: Alignment.center,
                        items: items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Center(
                              child: Text(item, textAlign: TextAlign.center,style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  SlideToBegin(
  nextPage: LoginScreen(), // or FaceScanPage()
),


                  // const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class SlideToBegin extends StatefulWidget {
  final Widget nextPage;

  const SlideToBegin({super.key, required this.nextPage});

  @override
  State<SlideToBegin> createState() => _SlideToBeginState();
}

class _SlideToBeginState extends State<SlideToBegin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double dragPosition = 0.0;
  double maxDrag = 0.0;
  bool completed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..addListener(() {
        setState(() {
          dragPosition = _controller.value;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _springTo(double target) {
    final spring = SpringDescription(
      mass: 1,
      stiffness: 500,
      damping: 20,
    );

    final simulation = SpringSimulation(
      spring,
      dragPosition,
      target,
      0,
    );

    _controller.animateWith(simulation);
  }

  void _completeSlide() async {
    if (completed) return;
    completed = true;

    _springTo(maxDrag);

    await Future.delayed(const Duration(milliseconds: 300));

    if (!mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => widget.nextPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        maxDrag = constraints.maxWidth - 60;

        return Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Center(
                child: Text(
                  "Slide to Begin",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Positioned(
                left: dragPosition,
                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    if (completed) return;
                    setState(() {
                      dragPosition += details.delta.dx;
                      dragPosition = dragPosition.clamp(0.0, maxDrag);
                    });
                  },
                  onHorizontalDragEnd: (_) {
                    if (dragPosition > maxDrag * 0.85) {
                      _completeSlide(); // ✅ go forward
                    } else {
                      _springTo(0); // ✅ spring back
                    }
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.4),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
