import 'package:flutter/material.dart';

class MyTheme {
  /// colors,night_mode,light_mode
  static Color primaryLight = const Color(0xffB7935F);
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xffFFFFFF);
  static ThemeData lightMode = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor, size: 40),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      titleSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      selectedIconTheme: const IconThemeData(size: 40),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800),
    ),
  );
}
