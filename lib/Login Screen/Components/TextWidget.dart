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
      "Streamline your campus life. Select",
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 16,
      ),
    ),
    
    const SizedBox(height: 5),
    
    Text(
      "your role to get started",
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 16,
      ),
    ),
      ],
    );
  }
}
