import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
        inverseSurface: Colors.grey.shade900,
        surface: Colors.grey.shade100,
        primary: const Color.fromARGB(255, 245, 69, 4),
        secondary: Colors.black,
        tertiary: Colors.white));

ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.dark(
        inverseSurface: Colors.grey.shade100,
        surface: Colors.grey.shade900,
        primary: const Color.fromARGB(255, 245, 141, 4),
        secondary: Colors.black,
        tertiary: Colors.white));
