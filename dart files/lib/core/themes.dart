import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}