import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/custom_field_components.dart';
import '../../../general_widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.h,
              width: double.infinity,
              color: AppColor.blue,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/logo/white_logo.png",
                  width: 250.w,
                  height: 72.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            30.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hey there,",
                      style: AppTextStyles.font24.copyWith(
                        color: AppColor.blue,
                      ),
                    ),
                    Text(
                      "Welcome Back",
                      style: AppTextStyles.font16.copyWith(
                        color: AppColor.blue,
                      ),
                    ),
                    30.height,
                    CustomFieldComponents(
                      hint: "Email",
                      controller: emailController,
                      prefixIcon: ImagesUrls.email,
                    ),
                    15.height,
                    CustomFieldComponents(
                      hint: "Password",
                      controller: passwordController,
                      prefixIcon: ImagesUrls.password,
                      suffixIcon: ImagesUrls.eye,
                    ),
                    15.height,
                    Text('Forgot your password?', style: AppTextStyles.font14),
                    20.height,
                    PrimaryButton(
                      onTap: () {
                        Get.toNamed(RouteName.proSubscriptionScreen);
                      },
                      childWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login", style: AppTextStyles.buttonText),
                        ],
                      ),
                      bgColor: AppColor.blue,
                      gradient: false,
                    ),
                    120.height,
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(color: AppColor.grey, thickness: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Or", style: AppTextStyles.font16),
                        ),
                        const Expanded(
                          child: Divider(color: AppColor.grey, thickness: 1),
                        ),
                      ],
                    ),
                    20.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialIcon(ImagesUrls.google),
                        SizedBox(width: 24.w),
                        socialIcon(ImagesUrls.apple),
                      ],
                    ),
                    20.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an account yet? ",
                          style: AppTextStyles.font16,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Register",
                            style: AppTextStyles.font16.copyWith(
                              color: AppColor.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget socialIcon(String assetPath) {
  return Container(
    width: 48.w,
    height: 48.h,
    decoration: BoxDecoration(
      color: AppColor.white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: AppColor.sec_text),
    ),
    child: Center(child: Image.asset(assetPath, width: 24.w, height: 24.h)),
  );
}
