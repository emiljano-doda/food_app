import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: const Color.fromRGBO(255, 20, 20, 20), //background is depricated
    primary: const Color.fromRGBO(255, 122, 122, 122),
    secondary: const Color.fromRGBO(255, 30, 30, 30),
    tertiary: const Color.fromRGBO(255, 47, 47, 47),
    inversePrimary: Colors.green.shade300,
  )
);
