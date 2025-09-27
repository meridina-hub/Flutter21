import 'package:flutter/material.dart';

class MyTheme {
  ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        headlineMedium: TextStyle(color: Colors.red),
        displayLarge: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(size: 40, color: Colors.white));
}
