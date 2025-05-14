import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/image_urls.dart';
import '../../core/routing/routers_name.dart';
import '../../general_widgets/primary_button.dart';

class ProSubscriptionScreen extends StatefulWidget {
  const ProSubscriptionScreen({super.key});

  @override
  State<ProSubscriptionScreen> createState() => _ProSubscriptionScreenState();
}

class _ProSubscriptionScreenState extends State<ProSubscriptionScreen> {
  bool isFreeTrialEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  120.height,
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                      ),
                      children: const [
                        TextSpan(text: 'Get '),
                        TextSpan(
                          text: 'PRO ',
                          style: TextStyle(color: AppColor.blue),
                        ),
                        TextSpan(text: 'Access'),
                      ],
                    ),
                  ),
                  8.height,
                  Text(
                    'Personal AI dermatologist\n Unlimited skin scanning\n   Export results to pdf',
                    style: AppTextStyles.font18,
                    textAlign: TextAlign.center,
                  ),
                  30.height,
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          24.height,
                          Text(
                            'Premium Dental Care\nfor Just',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.font18.copyWith(
                              color: AppColor.blue,
                            ),
                          ),
                          8.height,
                          Text(
                            '\$1 / Month',
                            style: AppTextStyles.font24.copyWith(
                              color: AppColor.blue,
                            ),
                          ),
                          16.height,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Unlock full access to AI dental scans, personalized care tips, expert second opinions, and priority dentist consultations—all for the price of a coffee.',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.font14,
                            ),
                          ),
                          16.height,
                          const FeaturePoint(text: 'Unlimited AI tooth scans'),
                          const FeaturePoint(
                            text: 'Connect with certified dentists',
                          ),
                          const FeaturePoint(
                            text: 'Get second opinions anytime',
                          ),
                          const FeaturePoint(
                            text: 'Personalized oral health tracking',
                          ),
                          const FeaturePoint(
                            text: 'Early issue detection & alerts',
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  10.height,
                  PrimaryButton(
                    onTap: () {
                      Get.toNamed(RouteName.bottomNavigationScreen);
                    },
                    bgColor: AppColor.blue,
                    gradient: false,
                    childWidget: Text(
                      "Subscribe",
                      style: AppTextStyles.buttonText,
                    ),
                  ),
                  10.height,

                  const Text(
                    'Privacy Policy  || Terms of use',
                    style: TextStyle(color: AppColor.text),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 36,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.dashboardScreen);
              },
              child: const Icon(Icons.close, size: 26, color: AppColor.black),
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturePoint extends StatelessWidget {
  final String text;

  const FeaturePoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.check, color: Colors.green, size: 18),
          8.width,
          Expanded(child: Text(text, style: AppTextStyles.font14)),
        ],
      ),
    );
  }
}
