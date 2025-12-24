import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationWidget extends StatelessWidget {
  final String notificationText;
  final String normalTextstart;
  final String boldText;
  final String normalTextend;
  final String time;
  final IconData icon;
  final MaterialColor color;

  const NotificationWidget({
    super.key,
    required this.notificationText,
    required this.time,
    required this.color,
    required this.normalTextstart,
    required this.boldText,
    required this.normalTextend,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              spreadRadius: 2,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18), 
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: themeProvider.isDark?color.shade100:color.shade50,
                child: Icon(icon, color: color),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          notificationText,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            color: themeProvider.isDark?Colors.grey.shade200:Colors.grey.shade600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: themeProvider.isDark?Colors.grey.shade200:Colors.grey.shade700,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                          children: [
                            TextSpan(text: normalTextstart),
                            TextSpan(
                              text: boldText,
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(text: normalTextend),
                          ],
                        ),
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