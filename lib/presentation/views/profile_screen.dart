import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/image_urls.dart';
import '../../core/routing/routers_name.dart';
import '../../general_widgets/primary_button.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColor.secondary),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back<void>();
          },
          icon: Image.asset(ImagesUrls.back),
        ),

        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppColor.black,
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                     CircleAvatar(
                      radius: 30.r,
                      backgroundImage: AssetImage(ImagesUrls.user),
                    ),
                    12.width,
                    Text(
                      'Stefani Wong',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    67.width,
                    PrimaryButton(
                      width: 83.w,
                      height: 30.h,
                      onTap: () {
                        Get.toNamed(RouteName.bottomNavigationScreen);
                      },
                      bgColor: AppColor.secondary,
                      gradient: true,
                      childWidget: Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ],
                ),
                30.height,
                _SectionCard(
                  title: "Account",
                  children: [
                    _ListTileItem(
                      imagePath: ImagesUrls.user_profile,
                      text: 'Personal Data',
                    ),
                    _ListTileItem(
                      imagePath: ImagesUrls.acheivement,
                      text: 'Achievement',
                    ),
                    _ListTileItem(
                      imagePath:ImagesUrls.activity,
                      text: 'Activity History',
                    ),
                    _ListTileItem(
                      imagePath:ImagesUrls.workout,
                      text: 'Workout Progress',
                    ),
                  ],
                ),

                16.height,
                _SectionCard(
                  title: "Notification",
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(ImagesUrls.notification),
                            10.width,
                            Text(
                              "Pop-up Notification",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColor.text,
                              ),
                            ),
                          ],
                        ),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: AppColor.secondary,
                        ),
                      ],
                    ),
                  ],
                ),
                16.height,
                _SectionCard(
                  title: "Other",
                  children:  [
                    _ListTileItem(
                      imagePath: ImagesUrls.contact,
                      text: 'Contact Us',
                    ),
                    _ListTileItem(
                      imagePath: ImagesUrls.privacy,
                      text: 'Privacy Policy',
                    ),
                    _ListTileItem(
                      imagePath: ImagesUrls.settings,
                      text: 'Settings',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SectionCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColor.grey,
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),
          10.height,
          ...children,
        ],
      ),
    );
  }
}

class _ListTileItem extends StatelessWidget {
  final String imagePath;
  final String text;

  const _ListTileItem({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(imagePath, width: 24.w, height: 24.h),
          title: Text(
            text,
            style: TextStyle(fontSize: 16.sp, color: AppColor.text),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
      ],
    );
  }
}
