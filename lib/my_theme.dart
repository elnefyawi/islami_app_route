import 'package:flutter/material.dart';

class MyTheme {
  /// colors,night_mode,light_mode
  static Color primaryLight = const Color(0xffB7935F);
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color primarydark = const Color(0xff141A2E);
  static Color golddark = const Color(0xffFACC1D);

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

  static ThemeData darkMode = ThemeData(
    primaryColor: primarydark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: whiteColor, size: 40),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: whiteColor),
      titleSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: whiteColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: golddark,
      unselectedItemColor: whiteColor,
      selectedIconTheme: const IconThemeData(size: 40),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800),
    ),
  );
}
