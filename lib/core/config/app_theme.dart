import 'package:flutter/material.dart';

class AppTheme {
  static const Color _sageGreen = Color(0xFF789B80);

  static const TextTheme textTheme = TextTheme(
    displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
  );

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _sageGreen,
      brightness: Brightness.light,
    ),
    textTheme: textTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _sageGreen,
      brightness: Brightness.dark,
    ),
    textTheme: textTheme,
  );
}
