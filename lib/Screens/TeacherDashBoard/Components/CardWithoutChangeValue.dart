import 'package:flutter/material.dart';

/// ---------------- CARD WITHOUT CHANGE VALUE ----------------
class ContainerWithoutValue extends StatelessWidget {
  final String title;
  final String Percentage;
  final IconData icon;
  final Color color;

  const ContainerWithoutValue({
    super.key,
    required this.title,
    required this.Percentage,
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
            radius: 20,
            child: Icon(icon, size: 27, color: color),
          ),

          const Spacer(),

          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            Percentage,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
