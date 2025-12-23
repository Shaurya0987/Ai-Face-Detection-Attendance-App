import 'package:flutter/material.dart';

class AvatarGroup extends StatelessWidget {
  final List<String> initials;
  final int extraCount;

  const AvatarGroup({
    super.key,
    required this.initials,
    required this.extraCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: (initials.length + 1) * 22.0 + 18,
      child: Stack(
        children: [
          for (int i = 0; i < initials.length; i++)
            Positioned(
              left: i * 22.0,
              child: _avatarCircle(
                initials[i],
                Colors.blue.shade100,
                Colors.blue.shade800,
              ),
            ),
          Positioned(
            left: initials.length * 22.0,
            child: _avatarCircle(
              '+$extraCount',
              Colors.grey.shade300,
              Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatarCircle(String text, Color bg, Color fg) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: bg,
      child: Text(
        text,
        style: TextStyle(
          color: fg,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}
