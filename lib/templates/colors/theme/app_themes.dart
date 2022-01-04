import 'package:flutter/material.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: Colors.blue,
      backgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.teal,
      backgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
    )
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}
