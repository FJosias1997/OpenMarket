import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0A0A0A), // fundo preto profundo
    primaryColor: const Color.fromARGB(255, 17, 176, 166), // ciano principal
    colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(255, 17, 176, 166), // ciano vibrante
      secondary: Color.fromARGB(255, 20, 81, 71), // verde-água escuro
      inverseSurface: Colors.white,
      surface: Color(0xFF141414),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
        letterSpacing: -0.5,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      bodyLarge: TextStyle(
        color: Colors.white70,
        fontSize: 18,
        height: 1.5,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFFB3B3B3),
        fontSize: 16,
        height: 1.4,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor:
            const Color.fromARGB(255, 17, 176, 166), // ciano principal
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: 'Prompt',
        ),
        shadowColor: Color.fromARGB(255, 17, 176, 166).withValues(alpha: 0.4),
        elevation: 8,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
        side: const BorderSide(color: Color(0xFF333333)),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Prompt',
  );
}
