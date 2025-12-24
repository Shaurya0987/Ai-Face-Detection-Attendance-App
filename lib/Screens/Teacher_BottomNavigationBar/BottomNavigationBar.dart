import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/TeacherDashBoard/TeacherDashBoard.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ClassesScreen/ClassesScreen.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/NotificationScreen/NotificationScreen.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeacherBottomNavigationBarr extends StatefulWidget {
  const TeacherBottomNavigationBarr({super.key});

  @override
  State<TeacherBottomNavigationBarr> createState() => _TeacherBottomNavigationBarrState();
}

class _TeacherBottomNavigationBarrState extends State<TeacherBottomNavigationBarr> {
  int _currentIndex = 0;

  // Using a list of widgets for our screens
  final List<Widget> _screens = const [
    TeacherDashboard(),
    TeacherClassesScreen(),
    TeacherNotificationScreen(),
    TeacherProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Scaffold(
      backgroundColor: themeProvider.isDark?Colors.grey.shade900:Colors.grey.shade100,
      // extendBody allows the floating nav bar to sit "over" the content
      extendBody: true,
      
      // IndexedStack preserves the state of each page (scroll position, etc.)
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          // Horizontal padding creates the "floating" width effect
          // Bottom padding keeps it away from the home indicator/edge
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
          child: Container(
            height: 65,
            decoration: BoxDecoration(
              color: themeProvider.isDark?Colors.grey.shade800:Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _navItem(Icons.home_outlined, Icons.home, 0),
                _navItem(Icons.meeting_room_sharp, Icons.meeting_room_sharp, 1),
                _navItem(Icons.notifications_none, Icons.notifications, 2),
                _navItem(Icons.person_outline, Icons.person, 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData inactiveIcon, IconData activeIcon, int index) {
    final bool isActive = _currentIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isActive ? activeIcon : inactiveIcon,
              size: 28,
              color: isActive ? Colors.blueAccent : Colors.grey,
            ),
            // Optional: Small dot indicator under the active icon
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.only(top: 4),
              height: 4,
              width: isActive ? 4 : 0,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
    );
  }
}