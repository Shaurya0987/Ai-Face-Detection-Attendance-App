import 'package:flutter/material.dart';

class AppBarofClassScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarofClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade100,
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
            color: Colors.grey.shade600,
            fontSize: 15,
          ),),
          Text("Dr. Smith",style: TextStyle(
            color: Colors.black,
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
            backgroundColor: Colors.white,
            child: Icon(Icons.calendar_month,color: Colors.grey.shade800,),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}