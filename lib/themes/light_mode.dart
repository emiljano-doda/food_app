import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300, //background is depricated
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white,
    inversePrimary: Colors.brown.shade400,
  )
);
