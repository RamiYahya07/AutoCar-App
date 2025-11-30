import 'package:auto_car/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextField({
  required String label,
  required String hint,
  required IconData icon,
  bool obscure = false,
}) {
  return TextField(
    obscureText: obscure,
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: AppColors.kPrimaryColor),
      labelText: label,
      hintText: hint,
      filled: true,
      fillColor: Colors.white.withOpacity(.85),
      labelStyle: TextStyle(color: AppColors.kPrimaryColor),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: AppColors.kPrimaryColor.withOpacity(.3)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: AppColors.kPrimaryColor, width: 1.4.w),
      ),
    ),
  );
}
