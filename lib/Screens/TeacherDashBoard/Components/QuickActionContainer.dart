import 'package:flutter/material.dart';

/// ---------------- CARD WITHOUT CHANGE VALUE ----------------
class QuickActionsContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const QuickActionsContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            radius: 25,
            child: Icon(icon, size: 32, color: color),
          ),

          const Spacer(),

          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),

          const SizedBox(height: 6),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
