
import 'package:auto_car/core/constants/colors.dart';
import 'package:auto_car/core/constants/const_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWithAppName extends StatelessWidget {
  const LogoWithAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(ImageAssets.logo, width: 140.w, height: 140.h),
           SizedBox(height: 10.h),
    Text(
      "Auto Car",
      style: TextStyle(
        color: AppColors.kPrimaryColor,
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
    ),
      ],
    );
 
  }
}
