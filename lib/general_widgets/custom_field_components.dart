import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/app_colors.dart';

class CustomFieldComponents extends StatelessWidget {
  final String hint;
  final String? suffixIcon;
  final String? prefixIcon;
  final TextEditingController controller;
  final VoidCallback? onSuffixIconTap;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? labelWidget;
  final bool enabled;
  final double? width;
  final double? height;

  const CustomFieldComponents({
    Key? key,
    required this.hint,
    this.suffixIcon,
    this.enabled = false,
    this.inputFormatters,
    this.prefixIcon,
    this.onSuffixIconTap,
    this.validator,
    this.labelWidget,
    required this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextFormField(
        readOnly: enabled,
        onTapOutside: (v) {
          FocusScope.of(context).unfocus();
        },
        keyboardType: keyboardType,
        cursorColor: AppColor.secondary,
        style: GoogleFonts.poppins(
          fontSize: 14.sp,
          color: AppColor.secondary,
          fontWeight: FontWeight.w400,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          label: labelWidget,
          filled: true,
          fillColor: AppColor.text_field,
          contentPadding: EdgeInsets.symmetric(vertical: 16.sp)
              .copyWith(left: prefixIcon == null ? 12.w : null),
          focusColor: Colors.white,
          hintText: hint,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14.sp,
            color: Color(0xffADA4A5),
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: prefixIcon != null
              ? Padding(
            padding: EdgeInsets.only(left: 12.w, right: 8.h),
            child: Image.asset(
              prefixIcon!,
              width: 24,
              height: 24,
            ),
          )
              : null,
          suffixIcon: suffixIcon != null
              ? Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: IconButton(
              onPressed: onSuffixIconTap,
              icon: Image.asset(
                suffixIcon!,
                width: 24.w,
                height: 24.h,
              ),
            ),
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffE2E4EA),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColor.error),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffE2E4EA), // replaces purple border
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffE2E4EA), // replaces purple border
            ),
          ),
          errorStyle: const TextStyle(color: AppColor.error, height: 0),
        ),
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
