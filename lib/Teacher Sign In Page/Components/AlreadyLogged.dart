import 'package:flutter/material.dart';

class AlreadyLoggedWidget extends StatelessWidget {
  const AlreadyLoggedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already logged in? ",
          style: TextStyle(fontSize: 13),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
          },
          child: const Text(
            "Sign in",
            style: TextStyle(
              fontSize: 13,
              color: Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
