import 'package:auto_car/core/constants/colors.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.kPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(
    primary: AppColors.kPrimaryColor,
    secondary: AppColors.kSecondaryColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.kPrimaryColor,
    elevation: 0,
    foregroundColor: Colors.black,
  ),
);
