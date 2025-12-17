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
      "Enter Your Details",
      style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
    ),
    
    const SizedBox(height: 13),
    
    const Text(
      "Data will be pushed to Supabase \nwhen AI detects you as a human",
      style: TextStyle(color: Colors.grey, fontSize: 16),
    ),
    
      ],
    );
  }
}

