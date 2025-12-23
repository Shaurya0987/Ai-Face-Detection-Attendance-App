import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 60,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(60),
            child: Image(
              image: AssetImage(
                "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text("Alex Johnson",style: TextStyle(
          color: themeProvider.isDark?Colors.white:Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 6),
                child: Text("STUDENT",style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(width: 6,),
            Text("ID: 20248592",style: TextStyle(
              color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade600
            ),)
          ],
        ),
        SizedBox(height: 3,),
        Text("B.Sc. Computer Science",style: TextStyle(
          color: themeProvider.isDark?Colors.grey.shade400:Colors.grey.shade500
        ),)
      ],
    );
  }
}