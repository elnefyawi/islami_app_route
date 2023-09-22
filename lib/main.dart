import 'package:flutter/material.dart';
import 'package:islami_app_route_1/hadeth/Hadeth_details_screen.dart';
import 'package:islami_app_route_1/homescreen.dart';
import 'package:islami_app_route_1/my_theme.dart';
import 'package:islami_app_route_1/quran/sura_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightMode,
    );
  }
}
