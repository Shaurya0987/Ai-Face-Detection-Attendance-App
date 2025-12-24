import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color leadingIconColor;
  final Color trailingIconColor;
  final bool boldText;
  const ListTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.leadingIconColor,
    required this.trailingIconColor,
    required this.boldText,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(leadingIcon, color: leadingIconColor, size: 25),
      title: Text(
        title,
        style: TextStyle(
          color: themeProvider.isDark?Colors.grey.shade300:boldText ? Colors.grey.shade600 : Colors.grey.shade600,
          fontSize: 13,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: themeProvider.isDark?Colors.grey.shade500:boldText ? Colors.black : Colors.amber,
          fontSize: 14,
        ),
      ),
      trailing: Icon(trailingIcon, color: trailingIconColor, size: 21),
    );
  }
}