import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';

  ThemeMode appTheme = ThemeMode.light;

  void changeLanguage(String Language) {
    if (appLanguage == Language) {
      return;
    }
    appLanguage = Language;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode mode) {
    if (appTheme == mode) {
      return;
    }
    appTheme = mode;
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}
