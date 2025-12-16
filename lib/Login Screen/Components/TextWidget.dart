import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
      "Welcome to",
      style: TextStyle(fontSize: 38),
    ),
    
    const Text(
      "CampusCheck",
      style: TextStyle(
        fontSize: 45,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
    
    const SizedBox(height: 5),
    
    Text(
      "Streamline your campus life. ",
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 17,
      ),
    ),
    
    const SizedBox(height: 5),
    
    Text(
      "Enter your details to get started",
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 17,
      ),
    ),
      ],
    );
  }
}
