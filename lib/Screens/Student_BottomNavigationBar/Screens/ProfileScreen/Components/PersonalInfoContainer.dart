import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalInfoWidget extends StatelessWidget {
  final String title;
  final String email;
  final IconData icon;
  final Color color;
  final Color iconShade;
  const PersonalInfoWidget({
    super.key, required this.title, required this.email, required this.icon, required this.color, required this.iconShade,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: iconShade,
            child: Icon(icon, color: color),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: themeProvider.isDark?Colors.grey.shade100:Colors.grey,
                  fontSize: 13,
                ),
              ),
              Text(email,style: TextStyle(
                color:themeProvider.isDark?Colors.grey.shade300:Colors.black,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

class Personal2InfoWidget extends StatelessWidget {
  final String title;
  final String email;
  final IconData icon;
  final Color color;
  final Color iconShade;
  const Personal2InfoWidget({
    super.key, required this.title, required this.email, required this.icon, required this.color, required this.iconShade,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
            radius: 25,
            backgroundColor: iconShade,
            child: Icon(icon, color: color),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: themeProvider.isDark?Colors.grey.shade100:Colors.grey,
                  fontSize: 13,
                ),
              ),
              Row(
                children: [
                  Text(email,style: TextStyle(
                    fontWeight: FontWeight.w900
                  ),),
                  SizedBox(width: 5,),
                  Icon(Icons.check_circle,color: Colors.green,size: 17,)
                ],
              )
            ],
          ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: themeProvider.isDark?Colors.blue.shade100:Colors.blue.shade50,
              borderRadius: BorderRadius.circular(3)
            ),
            padding: EdgeInsets.symmetric(vertical: 2,horizontal: 8),
            child: Text("ReScan",style: TextStyle(
              color: themeProvider.isDark?Colors.blue.shade700:Colors.blue.shade600
            ),),
          )
        ],
      ),
    );
  }
}
