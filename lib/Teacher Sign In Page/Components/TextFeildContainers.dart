import 'package:flutter/material.dart';

class TextFeildsContainer extends StatelessWidget {
  const TextFeildsContainer({
    super.key,
    required this.nameController,
    required this.idController,
    required this.passController,
  });

  final TextEditingController nameController;
  final TextEditingController idController;
  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Name Field
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: "Teacher Name",
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
    
        const SizedBox(height: 20),
    
        TextField(
          controller: idController,
          decoration: InputDecoration(
            hintText: "Teacher ID / Email",
            prefixIcon: Icon(Icons.badge_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
    
        const SizedBox(height: 20),
    
        TextField(
          controller: passController,
          decoration: InputDecoration(
            hintText: "Teacher Password",
            prefixIcon: Icon(Icons.badge_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
