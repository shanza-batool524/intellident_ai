import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:intellident_ai/core/routing/routers_name.dart';
import 'package:intellident_ai/presentation/views/onboarding_screen.dart';
import 'package:intellident_ai/presentation/views/doctor/doctor_screen.dart';

import '../../presentation/views/authentication/login_screen.dart';
import '../../presentation/views/authentication/profile_completion_screen.dart';
import '../../presentation/views/authentication/signup_screen.dart';
import '../../presentation/views/dashboard/dashboard_screen.dart';
import '../../presentation/views/dashboard/notifications/notification_screen.dart';
import '../../presentation/views/interests/interests_selection_screen.dart';
import '../../presentation/views/interests/problem_specifics_screen.dart';
import '../../presentation/views/navigation/bottom_navigation_screen.dart';
import '../../presentation/views/pro_subscription_screen.dart';
import '../../presentation/views/profile/profile_screen.dart';
import '../../presentation/views/splash/splash_disclaimer_screen.dart';
import '../../presentation/views/splash/splash_screen.dart';

// import '../views/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteName.interestSelectionScreen,
      page: () => const InterestSelectionScreen(),
    ),
    GetPage(
      name: RouteName.problemSpecificsScreen,
      page: () => const ProblemSpecificsScreen(),
    ),GetPage(
      name: RouteName.proSubscriptionScreen,
      page: () => const ProSubscriptionScreen(),
    ),GetPage(
      name: RouteName.signupScreen,
      page: () => const SignupScreen(),
    ),GetPage(
      name: RouteName.loginScreen,
      page: () => const LoginScreen(),
    ),GetPage(
      name: RouteName.completeProfileScreen,
      page: () => const CompleteProfileScreen(),
    ),GetPage(
      name: RouteName.profileScreen,
      page: () => const ProfileScreen(),
    ),GetPage(
      name: RouteName.dashboardScreen,
      page: () => const DashboardScreen(),
    ),GetPage(
      name: RouteName.bottomNavigationScreen,
      page: () =>  BottomNavigationScreen(),
    ),GetPage(
      name: RouteName.notificationScreen,
      page: () => const NotificationScreen(),
    ),GetPage(
      name: RouteName.splashDisclaimerScreen,
      page: () => const SplashDisclaimerScreen(),
    ),GetPage(
      name: RouteName.doctorScreen,
      page: () => const DoctorScreen(),
    ),GetPage(
      name: RouteName.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
  ];
}
