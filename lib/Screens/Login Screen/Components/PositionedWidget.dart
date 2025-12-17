import 'package:flutter/material.dart';

class BottomPositionedWidget extends StatelessWidget {
  const BottomPositionedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text("Need Help?", style: TextStyle(color: Colors.grey)),
          Text("•", style: TextStyle(color: Colors.grey)),
          Text("Privacy Policy", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

