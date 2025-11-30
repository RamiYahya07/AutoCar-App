
import 'package:auto_car/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signInSignUpFooter extends StatelessWidget {
  final String footerText;
  final String authText;
  final VoidCallback  onButtonTap;
  const signInSignUpFooter({super.key, required this.footerText,required this.authText,required this.onButtonTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          footerText,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.kFirstTextColor.withOpacity(.7),
          ),
        ),
        TextButton(
          onPressed:onButtonTap,
          child: Text(
            authText,
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
