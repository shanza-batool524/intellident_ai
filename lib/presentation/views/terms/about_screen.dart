import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/image_urls.dart';
import '../../../core/routing/routers_name.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        // AppBar color
        title: Image.asset(
          ImagesUrls.logo,
          height: 40, // Adjust the logo height as needed
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Image.asset(
                ImagesUrls.notification,
                width: 30,
                height: 30,
              ),
              onPressed: () {
                Get.toNamed(RouteName.notificationScreen);
              },
            ),
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Zaika.AI",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.primary,
              ),
            ),
            12.height,
            Text(
              "Zaika.AI is your smart culinary companion, blending the richness of tradition with the power of artificial intelligence.",
              style: TextStyle(fontSize: 14.sp, height: 1.5),
            ),
            12.height,
            Text(
              "Whether you're craving something classic or exploring new flavors, Zaika.AI helps you discover, analyze, and enhance the Zaika in every dish.",
              style: TextStyle(fontSize: 14.sp, height: 1.5),
            ),
            12.height,
            Text(
              "Need a recipe? Just ask your pocket chef! Scan your food and get your favorite Zaika recipe in seconds.",
              style: TextStyle(fontSize: 14.sp, height: 1.5),
            ),
            20.height,
            Divider(),
            12.height,
            Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.black,
              ),
            ),
            8.height,
            Row(
              children: [
                Icon(Icons.email, size: 18.sp, color: AppColor.secondary),
                SizedBox(width: 8.w),
                Text(
                  "help.zaika.ai@gmail.com",
                  style: TextStyle(fontSize: 14.sp),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
