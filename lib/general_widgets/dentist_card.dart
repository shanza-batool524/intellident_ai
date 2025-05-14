import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/fonts.dart';
import '../core/constants/image_urls.dart';
import '../presentation/views/doctor/dr_profile_screen.dart';

class DentistCard extends StatelessWidget {
  const DentistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColor.blue,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              ImagesUrls.dr,
              width: 80.w,
              height: 140.h,
              fit: BoxFit.cover,
            ),
          ),
          16.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Chip(
                      label: const Text('Arabic, English'),
                      backgroundColor: AppColor.white,
                      labelStyle: const TextStyle(color: AppColor.blue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        side: const BorderSide(color: AppColor.blue),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 1,
                      ),
                    ),
                  ],
                ),
                3.height,
                Text(
                  'dr. Kureha Yasmin',
                  style: AppTextStyles.font20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                4.height,
                Text('Specialist Dentist', style: AppTextStyles.font14),
                20.height,
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: AppColor.blue),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: const Text(
                          '111',
                          style: TextStyle(color: AppColor.blue),
                        ),
                      ),
                    ),
                    5.width, // Second Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorProfileScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.blue,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: const Text(
                          'View Profile',
                          style: TextStyle(color: AppColor.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
