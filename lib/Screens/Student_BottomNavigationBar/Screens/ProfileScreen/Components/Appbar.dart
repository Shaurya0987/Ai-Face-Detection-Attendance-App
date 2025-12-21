import 'package:flutter/material.dart';

class AppBarInfo extends StatelessWidget implements PreferredSizeWidget {
  const AppBarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(Icons.person_pin_circle_rounded, size: 35),
      ),
      title: const Text("My Profile"),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            "Edit",
            style: TextStyle(color: Colors.blue, fontSize: 17),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
