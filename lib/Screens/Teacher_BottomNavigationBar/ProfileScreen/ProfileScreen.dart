import 'package:facedetectionapp/Provider/ThemeProvider.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ProfileScreen/Components/AppBar.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ProfileScreen/Components/ListTileWidget.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ProfileScreen/Components/ProfileHeader.dart';
import 'package:facedetectionapp/Screens/Teacher_BottomNavigationBar/ProfileScreen/Components/TextContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      backgroundColor: themeProvider.isDark
          ? Colors.grey.shade900
          : Colors.grey.shade100,
      appBar: const AppBarOfProfile(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// PROFILE HEADER
              profileHeader(),

              /// STATS
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TextContainer(value: '5', title: 'CLASSES'),
                    TextContainer(value: '142', title: 'STUDENTS'),
                    TextContainer(value: '18', title: 'HRS/WK'),
                  ],
                ),
              ),

              /// CONTACT INFO TITLE
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Contact Information",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w900,
                    color: themeProvider.isDark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),

              /// CONTACT INFO CARD
              Container(
                width: double.infinity,
                height: 210,
                decoration: BoxDecoration(
                  color: themeProvider.isDark
                      ? Colors.grey.shade800
                      : Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  child: Column(
                    children: [
                      ListTileWidget(
                        title: 'Email Address',
                        subtitle: 'sarah.smith@college.edu',
                        leadingIcon: Icons.email,
                        trailingIcon: Icons.copy,
                        leadingIconColor: themeProvider.isDark
                            ? Colors.grey.shade300
                            : Colors.grey,
                        trailingIconColor: Colors.blue,
                        boldText: true,
                      ),
                      const Divider(height: 3),
                      ListTileWidget(
                        title: 'Phone Number',
                        subtitle: '+1 (555) 012-3456',
                        leadingIcon: Icons.phone,
                        trailingIcon: Icons.message,
                        leadingIconColor: themeProvider.isDark
                            ? Colors.grey.shade300
                            : Colors.grey,
                        trailingIconColor: Colors.blue,
                        boldText: true,
                      ),
                      const Divider(height: 3),
                      ListTileWidget(
                        title: 'Office Location',
                        subtitle: 'Building C, Room 304',
                        leadingIcon: Icons.location_on,
                        trailingIcon: Icons.landscape,
                        leadingIconColor: themeProvider.isDark
                            ? Colors.grey.shade300
                            : Colors.grey,
                        trailingIconColor: Colors.blue,
                        boldText: true,
                      ),
                    ],
                  ),
                ),
              ),

              /// PREFERENCES TITLE
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Preferences",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),

              /// PREFERENCES ITEMS
              const PreferencesWidget(
                text: "Notification Settings",
                color: Colors.deepPurple,
                leadingIcon: Icons.notifications,
              ),

              const PreferencesSwitchWidget(),

              const PreferencesWidget(
                text: "Privacy & Security",
                color: Colors.blue,
                leadingIcon: Icons.security,
              ),

              const PreferencesWidget(
                text: "Help & Support",
                color: Colors.deepOrange,
                leadingIcon: Icons.help,
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

/// -----------------------------
/// PREFERENCES NORMAL TILE
/// -----------------------------
class PreferencesWidget extends StatelessWidget {
  final String text;
  final MaterialColor color;
  final IconData leadingIcon;

  const PreferencesWidget({
    super.key,
    required this.text,
    required this.color,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: themeProvider.isDark
              ? Colors.grey.shade800
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: color.shade50,
                    child: Icon(
                      leadingIcon,
                      color: color,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    text,
                    style: TextStyle(
                      color: themeProvider.isDark
                          ? Colors.white
                          : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// -----------------------------
/// DARK MODE SWITCH (iOS STYLE)
/// -----------------------------
class PreferencesSwitchWidget extends StatelessWidget {
  const PreferencesSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: themeProvider.isDark
              ? Colors.grey.shade800
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: themeProvider.isDark
                        ? Colors.green.shade100
                        : Colors.green.shade50,
                    child: const Icon(
                      Icons.dark_mode,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                      color: themeProvider.isDark
                          ? Colors.white
                          : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),

              CupertinoSwitch(
                value: themeProvider.isDark,
                activeColor: CupertinoColors.activeBlue,
                onChanged: (value){
                  themeProvider.toggleTheme();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
