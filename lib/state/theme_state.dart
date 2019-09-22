import 'package:flutter/material.dart';

class ThemeState with ChangeNotifier {
  ThemeData hnDarkTheme = ThemeData.dark();
  ThemeData hnTheme = ThemeData.light();

  ThemeData _themeData;

  bool _isDark = false;

  ThemeState() {
    _themeData = hnDarkTheme;
  }

  ThemeData getTheme() => _themeData;

  changeTheme() {
    _themeData = _isDark ? hnDarkTheme : hnTheme;

    notifyListeners();

    _isDark = !_isDark;
  }
}
