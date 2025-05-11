import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';

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
                Image.asset(ImagesUrls.logo,),
                32.height,
                Text(
                  textAlign: TextAlign.center,
                  "Assess your dental health conveniently from your mobile devices, without the need for immediate physical visits to a dental professional.",
                  style: TextStyle(fontSize: 18.sp, color: AppColor.text),
                ),

                64.height,
                PrimaryButton(
                  onTap: () {
                    Get.toNamed(RouteName.splashDisclaimerScreen);
                  },
                  childWidget: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary,
                    ),
                  ),
                  bgColor: AppColor.button,
                  gradient: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
