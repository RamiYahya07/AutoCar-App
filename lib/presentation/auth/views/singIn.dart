import 'package:auto_car/core/constants/colors.dart';
import 'package:auto_car/core/router/routes.dart';
import 'package:auto_car/presentation/auth/views/widgets/auth_form_container.dart';
import 'package:auto_car/presentation/auth/views/widgets/signIn_signUp_footer.dart';
import 'package:auto_car/presentation/widgets/custom_textField.dart';
import 'package:auto_car/presentation/widgets/custom_title_text.dart';
import 'package:auto_car/presentation/widgets/logo_with_appName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackGroundColorW,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            LogoWithAppName(),
            SizedBox(height: 40.h),

            Align(
              alignment: Alignment.centerLeft,
              child: CustomTitleText(title: 'Sign In'),
            ),

            SizedBox(height: 20.h),

         AuthFormContainer(
  children: [
    customTextField(
      label: "Email",
      hint: "Enter your email",
      icon: Icons.email_outlined,
    ),
    customTextField(
      label: "Password",
      hint: "Enter your password",
      icon: Icons.lock_outline,
      obscure: true,
    ),
  ],
  buttonTitle: "Sign In",
  onButtonTap: () {
    context.go(AppRoutes.home);
  },
),
SizedBox(height: 25.h),
            signInSignUpFooter(
              footerText: "Don't have an account?",
              authText: "Register",
              onButtonTap:()=> context.go(AppRoutes.signUp),
            ),
          ],
        ),
      ),
    );
  }
}
