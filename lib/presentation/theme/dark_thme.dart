import 'package:auto_car/core/constants/colors.dart';
import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.kPrimaryColor,
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: const ColorScheme.dark(
    primary: AppColors.kPrimaryColor,
    secondary: AppColors.kSecondaryColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF121212),
    elevation: 0,
    foregroundColor: Colors.white,
  ),
);
