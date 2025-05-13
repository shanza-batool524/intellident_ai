import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/constants/image_urls.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import 'package:intellident_ai/general_widgets/primary_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routing/routers_name.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0,bottom: 50.0),
            child: Image.asset(
              ImagesUrls.white_logo,
              width: 250.w,
              height: 72.h,
            ),
          ),

          Container(
            height: 450.h,
           child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildOnboardingPage(
                  image: ImagesUrls.onoarding_one,
                  title: 'Welcome to Your Smart Dental Companion',
                  description:
                      'Get expert dental guidance anytime, anywhere. Our AI-powered app helps you take control of your oral health with smart tools and personalized insights.',
                ),
                _buildOnboardingPage(
                  image: ImagesUrls.onboarding_two,
                  title: 'Snap, Scan, and Get Instant Report',
                  description:
                      'Use your phone camera to scan your teeth. Our advanced AI analyzes your condition and gives you personalized insights.',
                ),
                _buildOnboardingPage(
                  image: ImagesUrls.onboarding_two,
                  title: 'Second Opinion',
                  description:
                      'Not sure about your diagnosis or treatment plan? Share your scan and get a second opinion from dental experts.',
                ),
                _buildOnboardingPage(
                  image: ImagesUrls.onboarding_three,
                  title: 'Your Privacy, Our Priority',
                  description:
                      'We use bank-grade encryption to protect your privacy. Your data is securely stored and accessible only to you.',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: const ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                spacing: 8,
                activeDotColor: AppColor.white,
                dotColor: Colors.white60,
                expansionFactor: 3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                _currentPage == 3
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Register Button
                        PrimaryButton(
                          width: 150.w,
                          height: 54.h,
                          onTap: () {
                            Get.toNamed(RouteName.signupScreen);
                          },
                          childWidget: const Text(
                            "Register",
                            style: TextStyle(color: AppColor.blue),
                          ),
                          bgColor: AppColor.white,
                          gradient: false,
                        ),
                        20.width, // Login Button
                        PrimaryButton(
                          width: 150.w,
                          height: 54.h,
                          onTap: () {
                            Get.toNamed(RouteName.loginScreen);
                          },
                          childWidget: const Text(
                            "Login",
                            style: TextStyle(color: AppColor.blue),
                          ),
                          bgColor: AppColor.white,
                          gradient: false,
                        ),
                      ],
                    )
                    : GestureDetector(
                      onTap: () {
                        if (_currentPage == 3) {
                          // Navigate to the next screen after the last onboarding
                          // For example, go to the login or main screen
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: Image.asset(
                        ImagesUrls.button,
                        width: 60.w,
                        height: 60.h,
                      ),
                    ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 35.w),
      child: Container(
        // width: 350.w,
        // height: 450.h,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            Image.asset(image, width: 275.w, height: 250.h),
            10.height,
            Text(
              title,
              style: AppTextStyles.font24,
              textAlign: TextAlign.center,
            ),
            10.height,
            Text(
              description,
              style: AppTextStyles.font16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
