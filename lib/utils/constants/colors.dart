import 'package:flutter/material.dart';
class TColors{

  TColors();

  // App Basic Colors
  static const Color primary = Color(0xFF4688ff);
  static const Color secondary = Color(0xFFfffe2b);
  static const Color accent = Color(0xFFb8c7ff);

// Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6F6F6F);
  static const Color textWhite = Colors.white;

// Background Colors
  static const Color light = Color(0xFFF7F7F7);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF5F5FF);

  static const Color lightContainer = Color(0xFFf6f6f6);
  static  Color darkContainer = TColors.textWhite.withOpacity(.1);


// Button Colors
  static const Color buttonPrimary = Color(0xFF4688ff);
  static const Color buttonSecondary = Color(0xFF6F6F6F);
  static const Color buttonDisabled = Color(0xFFCCCCCC);

// Border Colors
  static const Color borderPrimary = Color(0xFF909090);
  static const Color borderSecondary = Color(0xFFE6E6E6);

// Error and Validation Colors
  static const Color validationError = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976D2);

// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkGrey = Color(0xFF4A4A4A);
  static const Color grey = Color(0xFF959595);
  static const Color lightGrey = Color(0xFFE6E6E6);
}