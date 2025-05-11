import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';

class SplashDisclaimerScreen extends StatefulWidget {
  const SplashDisclaimerScreen({super.key});

  @override
  State<SplashDisclaimerScreen> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashDisclaimerScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.secondary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logo/white_logo.png"),
                32.height,
                Text(
                  textAlign: TextAlign.center,
                  "Assess your dental health conveniently from your mobile devices, without the need for immediate physical visits to a dental professional.",
                  style: TextStyle(fontSize: 18.sp, color: AppColor.white),
                ),
                30.height,
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Disclaimer:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'This app is not intended to supplement or be a substitute for the expertise and judgement of your dentist/doctor or any other healthcare professional.',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            activeColor: Colors.blueAccent,
                          ),
                          Text(
                            'I understand & agree',
                            style: TextStyle(fontSize: 16,color: AppColor.secondary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                64.height,
                PrimaryButton(
                  onTap: () {
                    Get.toNamed(RouteName.onBoardingScreenOne);
                  },
                  childWidget: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColor.secondary,
                    ),
                  ),
                  bgColor: AppColor.white,
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
