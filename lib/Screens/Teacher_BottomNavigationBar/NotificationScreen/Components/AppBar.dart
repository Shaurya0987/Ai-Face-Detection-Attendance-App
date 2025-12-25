import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarofNotificationScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarofNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().isDark;
    return AppBar(
      backgroundColor: isDark?Colors.grey.shade800:Colors.grey.shade100,
      elevation: 3,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: CircleAvatar(
          radius: 16,
          backgroundColor: Colors.white,
          backgroundImage: const AssetImage(
            "Assets/ChatGPT Image Nov 13, 2025, 06_59_40 PM.png",
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Teacher",style: TextStyle(
            color: isDark?Colors.grey.shade300:Colors.grey.shade600,
            fontSize: 15,
          ),),
          Text("Dr. Smith",style: TextStyle(
            color: isDark?Colors.white:Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: isDark?Colors.grey.shade600:Colors.white,
            child: Icon(Icons.checklist_sharp,color: isDark?Colors.grey.shade300:Colors.grey.shade800,),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}