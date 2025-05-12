import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/onboarding_widget.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingWidget(
          imagePath: "assets/images/onboarding_one.png",
          title: 'Snap, Scan, and Get Instant Report',
          description:
              "Use your phone camera to scan your teeth. Our advanced AI analyzes your oral condition and gives you instant, reliable assessments.",
          onNext: () {
            Get.toNamed(RouteName.onBoardingScreenThree);
          },
        ),
      ),
    );
  }
}
