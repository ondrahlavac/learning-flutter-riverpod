import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    // if the current ThemeMode is system, do nothing, because it doesn't make sense
    if (_themeMode == ThemeMode.system) return;

    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void setThemeMode(ThemeMode themeMode) {
    // no useless changes and notifications of listeners
    if (themeMode == _themeMode) return;

    _themeMode = themeMode;
    notifyListeners();
  }
}

final themeProvider = ChangeNotifierProvider<ThemeNotifier>((ref) {
  return ThemeNotifier();
});
