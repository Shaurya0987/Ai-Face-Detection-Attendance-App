import 'package:flutter/material.dart';

class TagsContainer extends StatelessWidget {
  final bool isActive;
  final String text;
  const TagsContainer({
    super.key,  this.isActive=false, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7,horizontal: 16),
      decoration: BoxDecoration(
        color: isActive?Colors.blue.shade600:Colors.grey.shade200,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Text(text,style: TextStyle(
        color: isActive?Colors.white:Colors.grey.shade700,
        fontSize: 15
      ),),
    );
  }
}