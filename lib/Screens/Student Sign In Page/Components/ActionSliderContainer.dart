import 'package:action_slider/action_slider.dart';
import 'package:facedetectionapp/Provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActionSliderWidget extends StatelessWidget {
  const ActionSliderWidget({
    super.key,
    required this.nameController,
    required this.idController,
    required this.selectedSem,
  });

  final TextEditingController nameController;
  final TextEditingController idController;
  final String? selectedSem;

  @override
  Widget build(BuildContext context) {
    return ActionSlider.standard(
      height: 56,
      sliderBehavior: SliderBehavior.stretch,
      toggleColor: Colors.blue,
      backgroundColor: Colors.blue.shade300,
      foregroundBorderRadius: BorderRadius.circular(16),
      backgroundBorderRadius: BorderRadius.circular(16),
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
      ),
      child: Text(
        "Slide to begin",
        style: GoogleFonts.dmSans(
          fontSize: 17,
          fontWeight: FontWeight.w900,
          color: Colors.white
        ),
      ),
      action: (controller) async {
        controller.loading();
        await Future.delayed(
          const Duration(milliseconds: 600),
        );
    
        if (nameController.text.trim().isEmpty ||
            idController.text.trim().isEmpty ||
            selectedSem == null) {
          controller.reset();
    
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Please fill all details",
                style: GoogleFonts.dmSans(),
              ),
              backgroundColor: Colors.redAccent,
            ),
          );
          return;
        }
    
        if (idController.text.length < 5 || idController.text.length>5) {
          controller.reset();
    
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Invalid ID"),
              backgroundColor: Colors.redAccent,
            ),
          );
          return;
        }
    
        controller.success();
    
        context.read<UserSession>().setName(
          nameController.text.trim(),
        );
        context.read<UserSession>().setrollno(
          idController.text.trim(),
        );
        context.read<UserSession>().setSem(selectedSem!);
    
        await Future.delayed(
          const Duration(milliseconds: 400),
        );
    
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const Placeholder(),
          ),
        );
      },
    );
  }
}
