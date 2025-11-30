import 'package:auto_car/core/constants/colors.dart';
import 'package:auto_car/core/constants/const_image.dart';
import 'package:auto_car/core/router/routes.dart';
import 'package:auto_car/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _scaleCurve;
  late Animation<double> _fadeLogo;
  late Animation<Offset> _slideButton;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    //! 1) Scale the orange curved shape
    _scaleCurve = Tween<double>(begin: 3.5, end: 1.0)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(
          CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.4)),
        );

    //! 2) Fade logo + name
    _fadeLogo = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.4, 0.7)),
    );

    //! 3) Slide button
    _slideButton = Tween<Offset>(begin: const Offset(0, 0.7), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _controller, curve: const Interval(0.7, 1.0)),
        );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Future<void> _goNext() async {
  // final prefs = await SharedPreferences.getInstance();
  // final isFirst = prefs.getBool("firstLaunch") ?? true;

  // if (isFirst) {
  // prefs.setBool("firstLaunch", false);
  // context.go("/onboarding");
  // } else {
  // context.go("/login");
  // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackGroundColor,
      body: Stack(
        children: [
          //! Orange Curved Shape Scaling from bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedBuilder(
              animation: _scaleCurve,
              builder: (context, child) =>
                  Transform.scale(scaleY: _scaleCurve.value, child: child),
              child: Image.asset(
                ImageAssets.curvedOrange,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //! Logo + Title (Fade in)
          Center(
            child: FadeTransition(
              opacity: _fadeLogo,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(ImageAssets.logo, height: 150.h),
                  SizedBox(height: 6.h),
                  Text(
                    "Auto Car",
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //! button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80.h),
              child: SlideTransition(
                position: _slideButton,
                child: CustomButton.circularButton(
                  color: Colors.white,
                  title: "Get Started",
                  onTap: () {
                    context.go(AppRoutes.signIn);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
