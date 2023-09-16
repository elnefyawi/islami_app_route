import 'package:flutter/material.dart';

class MyTheme {
  /// colors,night_mode,light_mode
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffFFFFFF);
  static ThemeData lightMode = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      selectedIconTheme: IconThemeData(size: 40),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
    ),
  );
}
