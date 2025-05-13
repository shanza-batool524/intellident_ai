import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';

class AppTextStyles {
  static TextStyle font26 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w900,
    color: AppColor.black,
  );
  static TextStyle font24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w900,
    color: AppColor.black,
  );

  static TextStyle font16 = TextStyle(
    fontSize: 16.sp,
    color: AppColor.black,
  );

  static TextStyle ButtonText = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColor.primary,
  );

  static TextStyle forgotPasswordText = TextStyle(
    color: AppColor.sec_text,
    decoration: TextDecoration.underline,
  );

  // Profile Completion Screen Styles
  static TextStyle profileTitle = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w900,
    color: AppColor.black,
  );

  static TextStyle profileSubtitle = TextStyle(
    fontSize: 16.sp,
    color: AppColor.text,
  );

  static TextStyle profileExpansionTileHeader = TextStyle(
    fontSize: 14.sp,
    color: AppColor.sec_text,
  );

  static TextStyle profileExpansionTileHint = TextStyle(
    fontSize: 14.sp,
    color: AppColor.sec_text,
  );

  static TextStyle profileButtonText = TextStyle(
    fontSize: 20.sp,
    color: AppColor.white,
    fontWeight: FontWeight.bold,
  );
}
