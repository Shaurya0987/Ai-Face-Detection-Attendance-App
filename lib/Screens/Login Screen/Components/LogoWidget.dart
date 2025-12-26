import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 23,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: const Icon(Icons.school_rounded, color: Colors.blue, size: 85),
    );
  }
}

class UserWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const UserWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(35),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        elevation: 5,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue.shade100,
                  child: Icon(icon, color: Colors.blue.shade600, size: 30),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
