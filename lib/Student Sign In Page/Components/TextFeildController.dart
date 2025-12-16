import 'package:flutter/material.dart';

class TextFeildContainer extends StatelessWidget {
  const TextFeildContainer({
    super.key,
    required this.nameController,
    required this.idController,
  });

  final TextEditingController nameController;
  final TextEditingController idController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Name Field
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: "Student Name",
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
            ),
          ),
        ),
    
        const SizedBox(height: 20),
    
        TextField(
          controller: idController,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: "Student Roll No.",
            prefixIcon: Icon(Icons.badge_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
            ),
          ),
          inputFormatters: [
            // idController.
          ],
        ),
    
        const SizedBox(height: 20),
    
        
      ],
    );
  }
}
