import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/image_urls.dart';
import '../../core/routing/routers_name.dart';
import '../../general_widgets/primary_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImagesUrls.logo),
                32.height,
                Text(
                  textAlign: TextAlign.center,
                  "Assess your dental health conveniently from your mobile devices, without the need for immediate physical visits to a dental professional.",
                  style: AppTextStyles.font18.copyWith(
                    color: AppColor.text,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                40.height,
                Text(
                  textAlign: TextAlign.center,
                  "Disclaimer: This app is not intended to supplement or be a substitute for the expertise and judgment of your dentist /doctor or any other healthcare professional.",
                  style: AppTextStyles.font12.copyWith(
                    fontStyle: FontStyle.italic,
                    color: AppColor.text,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                10.height,
                PrimaryButton(
                  onTap: () {
                    Get.toNamed(RouteName.onboardingScreen);
                  },
                  childWidget: Text(
                    "Get Started",
                    style:TextStyle(color: AppColor.white, fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  bgColor: AppColor.blue,
                  gradient: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
