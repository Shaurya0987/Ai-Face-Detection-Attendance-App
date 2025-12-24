import 'package:flutter/material.dart';

/// PRIVATE REUSABLE TILE
class Contactinformationcontainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final IconData trailingIcon;
  final bool bold;

  const Contactinformationcontainer({
    required this.icon,
    required this.title,
    required this.value,
    required this.trailingIcon,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 13,
        ),
      ),
      subtitle: Text(
        value,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: bold ? FontWeight.w600 : FontWeight.w500,
        ),
      ),
      trailing: Icon(
        trailingIcon,
        color: Colors.blue.shade600,
        size: 18,
      ),
    );
  }
}