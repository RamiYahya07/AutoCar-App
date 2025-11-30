import 'package:auto_car/core/router/routes.dart';
import 'package:auto_car/presentation/auth/views/signUp.dart';
import 'package:auto_car/presentation/auth/views/singIn.dart';
import 'package:auto_car/presentation/home/views/car_details_screen.dart';
import 'package:auto_car/presentation/home/views/home_screen.dart';
import 'package:auto_car/presentation/intro/views/splash_screen.dart';

import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.carDetails,
      builder: (context, state) =>
          CarDetailsScreen(car: state.extra as Map<String, dynamic>),
    ),
        GoRoute(
      path: AppRoutes.signIn,
      builder: (context, state) =>SignInScreen(),
    ),
            GoRoute(
      path: AppRoutes.signUp,
      builder: (context, state) =>SignUpScreen(),
    ),
  ],
);
