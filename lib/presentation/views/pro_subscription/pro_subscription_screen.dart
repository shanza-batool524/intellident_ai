import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';


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
                    children: [
                      const TextSpan(text: 'Get '),
                      TextSpan(
                        text: 'PRO ',
                        style: const TextStyle(color: AppColor.secondary),
                      ),
                      const TextSpan(text: 'Access'),
                    ],
                  ),
                ),
                8.height,
                 Text(
                  'Personal AI dermatologist\n Unlimited skin scanning\n   Export results to pdf',
                  style: TextStyle(fontSize: 17.sp, color: AppColor.text),
                  textAlign: TextAlign.center,
                ),
                30.height,
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 24),
                      Text(
                        'Premium Dental Care\nfor Just',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$1 / Month',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Unlock full access to AI dental scans, personalized care tips, expert second opinions, and priority dentist consultations—all for the price of a coffee.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
                        ),
                      ),
                      const SizedBox(height: 16),
                      FeaturePoint(text: 'Unlimited AI tooth scans'),
                      FeaturePoint(text: 'Connect with certified dentists'),
                      FeaturePoint(text: 'Get second opinions anytime'),
                      FeaturePoint(text: 'Personalized oral health tracking'),
                      FeaturePoint(text: 'Early issue detection & alerts'),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
                Spacer(),
                PrimaryButton(
                  onTap: () {
                    Get.toNamed(RouteName.bottomNavigationScreen);
                  },
                  bgColor: AppColor.secondary,
                  gradient: true,
                  childWidget: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                ),
                10.height,

                Text(
                  'Privacy Policy  || Terms of use',
                  style: TextStyle(color: AppColor.text),
                ),
              ],
            ),
          ),
          Positioned(
            top: 36,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.dashboardScreen);
              },
              child: const Icon(
                Icons.close,
                size: 26,
                color: AppColor.black,
              ),
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
          Icon(Icons.check, color: Colors.green, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}