import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF3B1DFF); // الأزرق
  static const Color secondary = Color(0xFFFF1D25); // الأحمر
  static const Color white = Colors.white;

  static const Gradient splashGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primary, secondary],
  );
}
