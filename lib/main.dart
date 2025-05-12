import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intellident_ai/presentation/views/dashboard/dashboard_screen.dart';
import 'package:intellident_ai/presentation/views/dashboard/doctor_screen.dart';
import 'package:intellident_ai/presentation/views/pro_subscription/pro_subscription_screen.dart';
import 'package:intellident_ai/presentation/views/splash/splash_disclaimer_screen.dart';

import 'core/constants/app_colors.dart';
import 'core/routing/routers.dart';
import 'core/routing/routers_name.dart';
import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 850),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          theme: ThemeData(
            iconTheme: const IconThemeData(color: AppColor.secondary),
            primaryColor: AppColor.primary,
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: AppColor.primary,
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.light,
                systemNavigationBarColor: AppColor.primary,
                statusBarColor: AppColor.primary, // status bar color
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          title: 'Intellident AI',
          // getPages: AppRoutes.appRoute(),
          // initialRoute: RouteName.splashScreen,
          // initialRoute: RouteName.splashScreen,
          home: OnboardingScreen(),
        );
      },
    );
  }
}
