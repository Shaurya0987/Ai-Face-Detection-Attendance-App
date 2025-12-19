import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActivityContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final IconData icon;
  final Color IconColor;
  final Color iconShade;
  const ActivityContainer({
    super.key, required this.title, required this.subtitle, required this.icon, required this.time, required this.IconColor, required this.iconShade
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: iconShade,
                radius: 24,
                child: Icon(icon,color: IconColor,),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: themeProvider.isDark?Colors.white:Colors.black
                  ),),
                  SizedBox(height: 1,),
                  Text(subtitle,style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    color: themeProvider.isDark?Colors.grey.shade200:Colors.grey.shade600,
                  ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(time,style: TextStyle(
                  color: Colors.grey,
                
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

