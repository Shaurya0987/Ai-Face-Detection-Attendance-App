import 'package:facedetectionapp/Screens/ClassesScreen/ClassesScreen.dart';
import 'package:facedetectionapp/Screens/NotificationScreen/NotificationScreen.dart';
import 'package:facedetectionapp/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:facedetectionapp/Screens/StudentDashBoard/StudentDashBoard.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({super.key});

  @override
  State<BottomNavigationBarr> createState() =>
      _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    StudentDashBoard(),
    ClassesScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      /// 🔁 ACTIVE SCREEN
      body: _screens[_currentIndex],

      /// 🔥 FLOATING BOTTOM NAV (FIXED AT BOTTOM)
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Center(
            child: Container(
              height: 52,
              width: 260,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _navItem(Icons.home_outlined, 0),
                  _navItem(Icons.maps_home_work_outlined, 1),
                  _navItem(Icons.notifications_none, 2),
                  _navItem(Icons.person_outline, 3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 🔘 NAV ITEM
  Widget _navItem(IconData icon, int index) {
    final bool isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Icon(
        icon,
        size: 24,
        color: isActive ? Colors.black : Colors.grey,
      ),
    );
  }
}
