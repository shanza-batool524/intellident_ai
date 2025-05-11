import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';


class InterestSelectionScreen extends StatefulWidget {
  const InterestSelectionScreen({super.key});

  @override
  State<InterestSelectionScreen> createState() =>
      _InterestSelectionScreenState();
}

class _InterestSelectionScreenState extends State<InterestSelectionScreen> {
  int? selectedIndex;

  Widget buildOption(String imagePath, String title, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 110.h,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColor.purple : AppColor.text,
            width: 0.5,
          ),
          color: isSelected ? AppColor.purple : AppColor.button,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.white, // or any background you like
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            16.width,
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? AppColor.white : AppColor.text,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            40.height,
            RichText(
              text: TextSpan(
                text: 'What do you want\n',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColor.text,
                ),
                children: [
                  TextSpan(text: 'to focus on '),
                  TextSpan(
                    text: 'using app?',
                    style: TextStyle(color: AppColor.purple),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'assets/images/skin_problems.png',
                'Detect skin problems',
                0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'assets/images/mole_changes.png',
                'Explore mole changes',
                1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'assets/images/skincare_product.png',
                'Selection of skin care product',
                2,
              ),
            ),
            20.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                onTap:
                    selectedIndex != null
                        ? () {
                          Get.toNamed(RouteName.problemSpecificsScreen);
                        }
                        : () {},
                childWidget: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: selectedIndex != null ? AppColor.white : AppColor.text,
                  ),
                ),
                bgColor:
                    selectedIndex != null ? AppColor.purple : AppColor.button,
                gradient: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
