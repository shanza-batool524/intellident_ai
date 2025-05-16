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
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColor.black, width: 0.5),
      ),
      child: Row(
        children: [
          const CircleAvatar(radius: 30, backgroundImage: AssetImage(ImagesUrls.dr)),
        10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              3.height,
              Text(
                'dr. Kureha Yasmin',
                style: AppTextStyles.font20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              4.height,
              Text('Specialist Dentist', style: AppTextStyles.font14), 4.height,
              Text('Rashid Hospital', style: AppTextStyles.font14),

            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_sharp,color: AppColor.black,)
        ],
      ),
    );
  }
}
