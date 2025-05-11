import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/onboarding_widget.dart';


class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingWidget(
          imagePath: ImagesUrls.onboarding_three,
          title: 'Get a Trusted Second Opinion',
          description:
              "Not sure about your diagnosis or treatment plan? Share your AI scan or dental report with certified dentists for a fast, unbiased second opinion.",
          onNext: () {
            Get.toNamed(RouteName.onBoardingScreenFour);
          },
        ),
      ),
    );
  }
}
