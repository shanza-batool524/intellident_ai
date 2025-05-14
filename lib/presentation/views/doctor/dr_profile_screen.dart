import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/constants/image_urls.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/fonts.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary,
        // AppBar color
        title: Text(
          "Doctor's Profile",
          style: AppTextStyles.font18.copyWith(color: AppColor.blue),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Image.asset(ImagesUrls.notification, width: 30, height: 30),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 80.r,
              backgroundImage: const AssetImage('assets/images/doctor.png'),
            ),
            16.height,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: const [
                  BoxShadow(blurRadius: 5, color: Color(0x33B0B0B0)),
                ], // Soft shadow
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dr. Fareeda Nikhat', style: AppTextStyles.font20),
                  4.height,
                  Text(
                    'Women\'s Health, Fetal Medicine',
                    style: AppTextStyles.font16,
                  ),
                  8.height,
                  Text('Latifa Hospital - Dubai', style: AppTextStyles.font16),
                ],
              ),
            ),
            16.height,
            // Contact Info Section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(blurRadius: 5, color: Color(0x33B0B0B0)),
                ], // Soft shadow
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.phone, color: AppColor.blue),
                      8.width,
                      const Text('04 6545434'),
                    ],
                  ),
                  12.height,
                  Row(
                    children: [
                      const Icon(Icons.email, color: Colors.blue),
                      8.width,
                      const Text('fnikhat@latifahosp.ae'),
                    ],
                  ),
                  const Divider(height: 30, color: AppColor.black),

                  // Languages Known section
                  const Text(
                    'Languages Known',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Arabic, Hindi, Urdu, English'),
                  const Divider(height: 30, color: AppColor.black),
                  // Location section
                  const Text(
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Dubai, UAE'),
                ],
              ),
            ),
            16.height,
          ],
        ),
      ),
    );
  }
}
