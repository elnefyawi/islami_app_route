import 'package:flutter/material.dart';
import 'package:islami_app_route_1/homescreen.dart';
import 'package:islami_app_route_1/my_theme.dart';

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
      },
      theme: MyTheme.lightMode,
    );
  }
}
