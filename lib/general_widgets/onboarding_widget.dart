import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../core/constants/app_colors.dart';


class OnBoardingWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onNext;

  const OnBoardingWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 420.h,
          fit: BoxFit.cover,
        ),
        60.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: AppColor.black,
            ),
          ),
        ),
        18.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColor.text,
            ),
          ),
        ),
        64.height,
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onNext,
              child: Image.asset("assets/images/button.png",height:70.h, width:70.w),
            ),
          ),
        )
      ],
    );
  }
}
