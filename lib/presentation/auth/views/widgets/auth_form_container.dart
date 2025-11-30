import 'package:auto_car/core/constants/colors.dart';
import 'package:auto_car/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthFormContainer extends StatelessWidget {
  final List<Widget> children;
  final String buttonTitle;
  final VoidCallback onButtonTap;

  const AuthFormContainer({
    super.key,
    required this.children,
    required this.buttonTitle,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        gradient: LinearGradient(
          colors: [
            AppColors.kPrimaryColor.withOpacity(.4),
            AppColors.kPrimaryColor.withOpacity(.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.kPrimaryColor.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          ...children.map((child) => Padding(
                padding: EdgeInsets.only(bottom: 18.h),
                child: child,
              )),
          SizedBox(height: 10.h),
          CustomButton.circularButton(
            title: buttonTitle,
            onTap: onButtonTap,
          ),
        ],
      ),
    );
  }
}
