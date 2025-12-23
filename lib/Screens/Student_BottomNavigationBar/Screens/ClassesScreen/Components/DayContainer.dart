import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DayContainer extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;
  const DayContainer({
    super.key, required this.day, required this.date, required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Container(
      width: 65,
      height: 86,
      decoration: BoxDecoration(
        color: isSelected?Colors.blue.shade600:themeProvider.isDark?Colors.grey.shade800:Colors.white,
        borderRadius: BorderRadius.circular(17)
      ),
      child: Column(
          children: [
            SizedBox(height: 17,),
            Text(day,style: TextStyle(
              color: isSelected?Colors.white:themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 15
            ),),
            Text(date,style: TextStyle(
              color: isSelected?Colors.white:themeProvider.isDark?Colors.grey.shade400:Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 21
            ),)
          ],
        ),
      
    );
  }
}

