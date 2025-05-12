import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/onboarding_widget.dart';


class OnboardingScreenFour extends StatefulWidget {
  const OnboardingScreenFour({super.key});

  @override
  State<OnboardingScreenFour> createState() => _OnboardingScreenFourState();
}

class _OnboardingScreenFourState extends State<OnboardingScreenFour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingWidget(
          imagePath: "assets/images/onboarding_one.png",
          title: 'Your Privacy, Our Priority',
          description:
              "We use bank-grade encryption to protect your data. Your scans and medical information stay secure and confidential—always.",
          onNext: () {
            Get.toNamed(RouteName.signupScreen);
          },
        ),
      ),
    );
  }
}
