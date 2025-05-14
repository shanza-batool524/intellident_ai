import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/custom_field_components.dart';
import '../../../general_widgets/primary_button.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.h,
              width: double.infinity,
              color: AppColor.blue,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  ImagesUrls.white_logo,
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
                      "Create an Account",
                      style:AppTextStyles.font26.copyWith(color: AppColor.blue)
                    ),
                    20.height,
                    CustomFieldComponents(
                      hint: "First Name",
                      controller: firstNameController,
                      prefixIcon: ImagesUrls.profile,
                    ),
                    15.height,
                    CustomFieldComponents(
                      hint: "Last Name",
                      controller: lastNameController,
                      prefixIcon: ImagesUrls.profile,
                    ),
                    15.height,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                          activeColor: AppColor.blue,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 12.sp, color: AppColor.text),
                              children: const [
                                TextSpan(text: 'By continuing you accept our '),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                    color: AppColor.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(text: ' and '),
                                TextSpan(
                                  text: 'Term of Use',
                                  style: TextStyle(
                                    color: AppColor.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    20.height,
                    PrimaryButton(
                      onTap: () {
                        Get.toNamed(RouteName.completeProfileScreen);
                      },
                      childWidget: Text(
                        "Register",
                        style: AppTextStyles.font18.copyWith(color: AppColor.primary)
                      ),
                      bgColor: AppColor.blue,
                      gradient: false,
                    ),
                    20.height,
                    Row(
                      children: [
                        const Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Or",
                            style: AppTextStyles.font14,
                          ),
                        ),
                        const Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
                      ],
                    ),
                    20.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialIcon(ImagesUrls.google),
                        24.width,
                        socialIcon(ImagesUrls.apple),
                      ],
                    ),
                    20.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(fontSize: 14.sp, color: AppColor.text),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Login",
                            style:  AppTextStyles.font14.copyWith(color: AppColor.blue)
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
    height: 48.w,
    decoration: BoxDecoration(
      color: AppColor.white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: AppColor.grey),
    ),
    child: Center(child: Image.asset(assetPath, width: 24.w, height: 24.h)),
  );
}
