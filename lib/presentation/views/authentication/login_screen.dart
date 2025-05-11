import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              60.height,
              Text(
                "Hey there,",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                ),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColor.black,
                ),
              ),
              30.height,
              CustomFieldComponents(
                hint: "Email",
                controller: emailController,
                prefixIcon: "assets/icons/Message.png",
              ),
              15.height,
              CustomFieldComponents(
                hint: "Password",
                controller: passwordController,
                prefixIcon: "assets/icons/Lock.png",
                suffixIcon: "assets/icons/hide_password.png",
              ),
              15.height,
              Text(
                'Forgot your password?',
                style: const TextStyle(
                  color: AppColor.sec_text,
                  decoration: TextDecoration.underline,
                ),
              ),
              300.height,
              PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.proSubscriptionScreen);
                },
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImagesUrls.login),
                    10.width,
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColor.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                bgColor: AppColor.button,
                gradient: true,
              ),
              20.height,
              Row(
                children: [
                  Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or",
                      style: TextStyle(fontSize: 14.sp, color: AppColor.black),
                    ),
                  ),
                  Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
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
                    style: TextStyle(fontSize: 14.sp, color: AppColor.text),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColor.secondary, // purple color
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: AppColor.sec_text),
    ),
    child: Center(child: Image.asset(assetPath, width: 24.w, height: 24.h)),
  );
}
