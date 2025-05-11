import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellident_ai/core/utils/extension.dart';

import '../../../core/constants/app_colors.dart';
 import '../../../core/routing/routers_name.dart';
import '../../../general_widgets/primary_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColor.secondary),
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Welcome User',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, color: AppColor.text),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, color: Colors.blueAccent),
                    6.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                         Row(
                          children: [
                            Text(
                              "DSO, Dubai",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none_outlined),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            width: 8.w,
                            height: 8.h,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    4.width,
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 16.r,
                      child: const Icon(Icons.person, color: AppColor.white),
                    ),
                  ],
                ),
                22.height,
                ClipRRect(
                  borderRadius: BorderRadius.circular(22.r),
                  child: Container(
                    height: 165.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColor.tertiary, AppColor.secondary],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/home_scan.png"),
                        // width: double.infinity,
                        // height: 146.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 70,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Teeth Scanner",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        30.width,

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 70),
                          child: PrimaryButton(
                            width: 95.w,
                            height: 35.h,
                            onTap: () {},
                            bgColor: AppColor.blue,
                            gradient: false,
                            childWidget: Text(
                              "Scan Now",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                22.height,
                GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteName.doctorScreen);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22.r),
                    child: Container(
                      height: 165.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [AppColor.tertiary, AppColor.secondary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/home_scan2.png"),
                          // width: double.infinity,
                          // height: 146.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.white,
                                  ),
                                ), Text(
                                  "Schedule an appointment\nwith our top doctors.",
                                  style: TextStyle(
                                    fontSize: 12.sp,
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
                        color: const Color(0xff93C19E),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 30),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/dr.png",
                              width: 70.w,
                              height: 70.h,
                              // fit: BoxFit.contain,
                            ),
                            10.height,
                            Text(
                              "Doctors",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),   Container(
                      width: 170.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffDC9497),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 30),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/teeth.png",
                              width: 70.w,
                              height: 70.h,
                              // fit: BoxFit.contain,
                            ),10.height,
                            Text(
                              "Oral Products",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // 20.width,

                  ],
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
                        padding: const EdgeInsets.symmetric(horizontal: 4),
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          6.height,
                          Container(
                            width: 100.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFFE58CFF), Color(0xFF9CDAFB)],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
