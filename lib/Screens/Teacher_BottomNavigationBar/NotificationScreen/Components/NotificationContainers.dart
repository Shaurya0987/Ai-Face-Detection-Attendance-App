import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentNotificationContainerTeacher3 extends StatelessWidget {
  final String title;
  final MaterialColor color;
  final String time;
  final String subtitle;
  final IconData icon;
  const RecentNotificationContainerTeacher3({
    super.key, required this.title, required this.color, required this.subtitle,required this.time, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark=themeProvider.isDark;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: color.shade100,
                child: Icon(
                  Icons.warning,
                  color: color,
                ),
              ),
      
              const SizedBox(width: 15),
      
              /// TEXT CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: isDark?Colors.white:Colors.black,
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            color: isDark?Colors.grey.shade200:Colors.grey.shade600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
      
                    const SizedBox(height: 6),
      
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: isDark?Colors.grey.shade400:Colors.grey.shade700,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentNotificationContainerTeacher2 extends StatelessWidget {
  final String title;
  final MaterialColor color;
  final String time;
  final String subtitle;
  final IconData icon;
  final String containerText;
  const RecentNotificationContainerTeacher2({
    super.key, required this.title, required this.color, required this.subtitle, required this.containerText, required this.time, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark=themeProvider.isDark;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: color.shade100,
                child: Icon(
                  icon,
                  color: color,
                ),
              ),
      
              const SizedBox(width: 15),
      
              /// TEXT CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: isDark?Colors.white:Colors.black
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            color: isDark?Colors.grey.shade300:Colors.grey.shade600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
      
                    const SizedBox(height: 6),
      
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: isDark?Colors.grey.shade400:Colors.grey.shade700,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 6),
                            decoration: BoxDecoration(
                              color: color.shade100,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(containerText,style: TextStyle(
                              color: color.shade600,
                              fontSize: 14
                            ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class RecentNotificationContainerTeacher extends StatelessWidget {
  const RecentNotificationContainerTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark=themeProvider.isDark;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: const Border(
            left: BorderSide(color: Colors.red, width: 7),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red.shade100,
                child: const Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
              ),
      
              const SizedBox(width: 15),
      
              /// TEXT CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Anomaly Detected",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: isDark?Colors.white:Colors.black
                          ),
                        ),
                        Text(
                          "20m ago",
                          style: TextStyle(
                            color: isDark?Colors.grey.shade300:Colors.grey.shade600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
      
                    const SizedBox(height: 6),
      
                    Text(
                      "Unrecognized indivisual detected in Bio-202 during automated scan",
                      style: TextStyle(
                        color: isDark?Colors.grey.shade400:Colors.grey.shade700,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 6),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Review Scan",style: TextStyle(
                              color: Colors.red.shade800,
                              fontSize: 14
                            ),),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 2,horizontal: 6),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Dismiss",style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 14
                            ),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}