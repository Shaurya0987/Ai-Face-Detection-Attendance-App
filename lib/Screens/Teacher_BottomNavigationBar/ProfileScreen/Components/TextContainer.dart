import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextContainer extends StatelessWidget {
  final String value;
  final String title;
  const TextContainer({
    super.key, required this.value, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Container(
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black,
            spreadRadius: 1,
            blurStyle: BlurStyle.outer,
            // offset: Offset(-12, 12)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value,style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: themeProvider.isDark?Colors.white:Colors.black
          ),),
          Text(title,style: TextStyle(
            fontSize: 13,
            color: themeProvider.isDark?Colors.grey.shade300:Colors.grey
          ),)
        ],
      ),
    );
  }
}