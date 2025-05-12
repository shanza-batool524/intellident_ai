import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/onboarding_widget.dart';


class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingWidget(
          imagePath: "assets/images/onboarding_one.png",
          title: 'Welcome to Your Smart Dental Companion',
          description:
              "Get expert dental guidance anytime, anywhere. Our AI-powered app helps you take control of your oral health with smart tools and personalized insights.",
          onNext: () {
            Get.toNamed(RouteName.onBoardingScreenTwo);
          },
        ),
      ),
    );
  }
}
