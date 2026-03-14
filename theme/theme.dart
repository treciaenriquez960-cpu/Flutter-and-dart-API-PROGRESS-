import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryViolet = Color.fromARGB(255, 104, 87, 153);
  static const Color backgroundPink = Color.fromARGB(255, 211, 192, 255);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Roboto",

    scaffoldBackgroundColor: Colors.white,

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 219, 124, 156),
      brightness: Brightness.light,
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      titleLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 219, 130, 160),
      foregroundColor: Colors.black,
      centerTitle: true,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 223, 139, 167),
      foregroundColor: Colors.black,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 211, 121, 151),
        foregroundColor: Colors.black,
      ),
    ),
  );
}