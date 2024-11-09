import 'package:flutter/material.dart';

class RColors {
  RColors._();

//App Basic Colors
  static const Color primaryColor = Color(0xFFFF6F00); // Refined Amber
  static const Color secondaryColor = Color(0xFFFFE24B); // Charcoal Gray
  static const Color accentColor = Color(0xFF00ACC1); // Light Teal

  static const Gradient linearGradient = LinearGradient(
     begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4)
  ]);

  //Text Color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //Background Color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background Container Color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color(0x1AFFFFFF);

  //Buttons Color
  static const Color buttonPrimary = Color(0xFFFF6F00);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Error and validation color
  static const Color error = Color(0xFFFF5252);
  static const Color success = Color(0xFF4CAF50); // Material Green 500
  static const Color warning = Color(0xFFFFC107); // Material Yellow 500
  static const Color info = Color(0xFF2196F3);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGray = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
