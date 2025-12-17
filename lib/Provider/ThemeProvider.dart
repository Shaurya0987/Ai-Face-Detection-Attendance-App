import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  /// Current theme
  ThemeData get theme =>
      _isDark ? ThemeData.dark() : ThemeData.light();

  /// Toggle between light and dark mode
  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
