import 'package:flutter/material.dart';

class TextsWidget extends StatelessWidget {
  const TextsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Position your face",style: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold
    ),),
    SizedBox(height: 10,),
    Text("Look directly at the camera to mark",style: TextStyle(
      color: Colors.grey.shade600,
      fontSize: 16
    ),),
    Text("your attendance automatically",style: TextStyle(
      color: Colors.grey.shade600,
      fontSize: 16
    ))
      ],
    );
  }
}