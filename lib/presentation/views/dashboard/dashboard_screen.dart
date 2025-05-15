import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intellident_ai/core/constants/fonts.dart';
import 'package:intellident_ai/core/constants/image_urls.dart';
import 'package:intellident_ai/core/utils/extension.dart';
import 'package:intellident_ai/general_widgets/custom_drawer.dart';
import 'package:intellident_ai/presentation/views/doctor/doctor_screen.dart';

import '../../../core/constants/app_colors.dart';
import '../../../general_widgets/primary_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<BlogItem> blogs = [
    BlogItem(
      imagePath: 'assets/images/doctor.png',
      caption:  'sample text',
      rating: 4.8,
    ),
    BlogItem(
      imagePath: 'assets/images/doctor.png',
      caption:  'sample text',
      rating: 4.6,
    ),
    BlogItem(
      imagePath: 'assets/images/doctor.png',
      caption: 'sample text',
      rating: 4.9,
    ),
  ];
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
              },
            ),
          ),
        ],
        elevation: 0.1,
        shadowColor: AppColor.black,
      ),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                15.height,
                Text(
                  "Welcome Back Shanza!",
                  style: AppTextStyles.font24.copyWith(color: AppColor.blue),
                ),
                20.height,
                ClipRRect(
                  borderRadius: BorderRadius.circular(22.r),
                  child: Container(
                    height: 165.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColor.blue,
                      image: DecorationImage(
                        image: AssetImage("assets/images/home_scan.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9),
                              child: Text(
                                "Teeth Scanner",
                                style: AppTextStyles.font18.copyWith(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(ImagesUrls.scan,height: 130,width:130,)
                            ),
                          ],
                        ),
                        10.height,
                      ],
                    ),
                  ),
                ),

                22.height,
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(RouteName.doctorScreen);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DoctorScreen()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22.r),
                    child: Container(
                      height: 165.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/home_scan2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Looking for \nSpecialist Doctors?",
                                  style: AppTextStyles.font20.copyWith(
                                    color: AppColor.white,
                                  ),
                                ),
                                Text(
                                  "Schedule an appointment\nwith our top doctors.",
                                  style: AppTextStyles.font12.copyWith(
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                22.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffDC9497),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 30,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              ImagesUrls.teeth,
                              width: 70.w,
                              height: 70.h,
                              // fit: BoxFit.contain,
                            ),
                            10.height,
                            Text(
                              "Oral Products",
                              style: AppTextStyles.font18.copyWith(
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff93C19E),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 30,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              ImagesUrls.doctor,
                              width: 70.w,
                              height: 70.h,
                            ),
                            10.height,
                            Text("Games", style: AppTextStyles.font18),
                          ],
                        ),
                      ),
                    ),
                    // 20.width,
                  ],
                ),
                20.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Blogs",style: AppTextStyles.font20,),
                    Text("View All",
                      style: AppTextStyles.font16,),
                  ],
                ),
                10.height,
                SizedBox(
                  height: 220.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: blogs.length,
                    itemBuilder: (context, index) {
                      final item = blogs[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          width: 150.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: [
                                Image.asset(
                                  item.imagePath,
                                  fit: BoxFit.cover,
                                  height: 260.h,
                                  width: 150.w,
                                ),
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(
                                        12.r,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star_border,
                                          color: AppColor.white,
                                          size: 16,
                                        ),
                                        4.width,
                                        Text(
                                          item.rating.toString(),
                                          style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black87,
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      item.caption,
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                20.height,
                Container(
                  width: double.infinity,
                  height: 67.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF8BC6EC), Color(0xFF9599E2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 130,
                        child: Row(
                          children: List.generate(4, (index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Container(
                                width: 6,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      // Main Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            // Text & Button Column
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Track Your progress",
                                  style: AppTextStyles.font16.copyWith(color: AppColor.white)
                                ),
                                6.height,
                                Container(
                                  width: 100.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFE58CFF),
                                        Color(0xFF9CDAFB),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.assignment_turned_in,
                              color: Colors.white,
                              size: 32,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                20.height,
                Container(
                  width: double.infinity,
                  height: 75.h,  // Increased height for more prominence
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),  // Rounded corners
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFE5A1), Color(0xFFFFD700)],  // Pastel yellow gradient
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person_add,
                            color: AppColor.white,
                            size: 28.0,
                          ),
                          10.width,
                          Text(
                            "Refer a Friend",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColor.white,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               30.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BlogsCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const BlogsCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            // or try 0.5 for more solid look
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: Colors.white.withOpacity(0.3)),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(16.r),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    height: 40.h,
                    width: 40.w,
                    fit: BoxFit.contain,
                  ),
                  12.height,
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                  8.height,
                  const Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlogItem {
  final String imagePath;
  final String caption;
  final double rating;

  BlogItem({
    required this.imagePath,
    required this.caption,
    required this.rating,
  });
}
