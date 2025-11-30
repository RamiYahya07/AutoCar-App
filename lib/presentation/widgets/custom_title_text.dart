
import 'package:auto_car/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitleText extends StatelessWidget {
  final String title;
  final Color? fontColor;

  const CustomTitleText({
    super.key,
    required this.title,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        color: fontColor ?? AppColors.kFirstTextColor,
      ),
    );
  }
}
