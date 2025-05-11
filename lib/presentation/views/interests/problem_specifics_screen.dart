import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';


class ProblemSpecificsScreen extends StatefulWidget {
  const ProblemSpecificsScreen({super.key});

  @override
  State<ProblemSpecificsScreen> createState() =>
      _ProblemSpecificsScreenState();
}

class _ProblemSpecificsScreenState extends State<ProblemSpecificsScreen> {
  int? selectedIndex;

  Widget buildOption( String title, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        height: 70.h,
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
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: isSelected ? AppColor.white : AppColor.text,
            ),
          ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Text('Know the specifics of your problem?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColor.text,
                  ),
              ),
            ),
            30.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'How to Clear up Acne?',
                0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'How to get rid of rash?',
                1,
              ),
            ), Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'How to get rid of dermatitis?',
                2,
              ),
            ), Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                "I don't know the condition of my skin",
                3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: buildOption(
                'Skin care baby',
                4,
              ),
            ),
            20.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                onTap:
                selectedIndex != null
                    ? () {
                  Get.toNamed(RouteName.proSubscriptionScreen);
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
