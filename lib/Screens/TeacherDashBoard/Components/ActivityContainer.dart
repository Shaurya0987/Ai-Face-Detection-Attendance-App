import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
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
                    fontSize: 16
                  ),),
                  SizedBox(height: 1,),
                  Text(subtitle,style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    color: Colors.grey.shade600
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

